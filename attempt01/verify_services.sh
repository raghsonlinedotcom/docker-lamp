#!/bin/bash

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S_%Z_%a")
LOG_DIR="logs-container"
LOG_FILE="${LOG_DIR}/verification_${TIMESTAMP}.log"

mkdir -p $LOG_DIR

# Function to log and print output
log() {
  echo -e "$1" | tee -a $LOG_FILE
}

# Verify Apache Service
log "===== Apache Service Check ====="
APACHE_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8181/test.php)
if [ "$APACHE_STATUS" -eq 200 ]; then
  log "Apache is running and serving HTTP requests successfully."
else
  log "Apache is NOT running or not serving HTTP requests. HTTP Status: $APACHE_STATUS"
fi

# Check test.php output
log "\n===== test.php Output Check ====="
VERIFY_CONTENT=$(curl -s http://localhost:8181/test.php)
log "$VERIFY_CONTENT"

# Verify MariaDB Service
log "\n===== MariaDB Service Check ====="
MARIADB_STATUS=$(docker exec -i docker-lamp-mariadb-server mariadb -u root -prootpassword -e "SELECT VERSION();" | grep -o '.*-MariaDB')
if [ -n "$MARIADB_STATUS" ]; then
  log "MariaDB is running. Version: $MARIADB_STATUS"
else
  log "MariaDB is NOT running or accessible."
fi

# Check data from Test table in DockerMySQLTest database, run init.sql if needed
log "\n===== DockerMySQLTest.Test Contents Check ====="
TEST_DATA=$(docker exec -i docker-lamp-mariadb-server mariadb -u root -prootpassword -e "USE DockerMySQLTest; SELECT * FROM Test;" 2>&1)
if echo "$TEST_DATA" | grep -q "ERROR 1146 (42S02)"; then
  log "Table \`Test\` does not exist. Running init.sql..."
  docker exec -i docker-lamp-mariadb-server mariadb -u root -prootpassword DockerMySQLTest < /db/init.sql
  TEST_DATA=$(docker exec -i docker-lamp-mariadb-server mariadb -u root -prootpassword -e "USE DockerMySQLTest; SELECT * FROM Test;")
fi
log "$TEST_DATA"

log "\n===== Verification Completed ====="

