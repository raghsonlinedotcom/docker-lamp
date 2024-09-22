#!/bin/bash

# Get the current date and time for log filenames
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S_%Z_%a")

# Define log directory and file names
LOG_DIR="logs-container"
TIMESTAMPED_LOG_DIR="$LOG_DIR/$TIMESTAMP"
SCRIPT_LOG_FILE="$LOG_DIR/docker-compose-restart-$TIMESTAMP.log"
APACHE_LOG_FILE="$TIMESTAMPED_LOG_DIR/docker-lamp-apache-server.log"
MARIADB_LOG_FILE="$TIMESTAMPED_LOG_DIR/docker-lamp-mariadb-server.log"

# Ensure the log directory exists
mkdir -p $TIMESTAMPED_LOG_DIR

# Decorative line
LINE="--------------------------------------------------"

# Start logging to the script log file
exec &> >(tee -a "$SCRIPT_LOG_FILE")

# Print Script Metadata
echo -e "$LINE\n Script Metadata \n$LINE\n"
echo -e "Script Name: ${0##*/} \n"
echo -e "Execution Time: $TIMESTAMP \n"
echo -e "$LINE\n"

# Bring down the Docker Compose services
echo -e "\n$LINE\nBringing down Docker Compose services...\n$LINE"
docker-compose down

# Prune unused volumes
echo -e "\n$LINE\nPruning unused Docker volumes...\n$LINE"
docker volume prune -f

# Bring up the Docker Compose services again
echo -e "\n$LINE\nBringing up Docker Compose services...\n$LINE"
docker-compose up -d

# Capture logs for apache service
echo -e "\n$LINE\nCapturing logs for Apache service...\n$LINE"
docker-compose logs apache > $APACHE_LOG_FILE

# Capture logs for mariadb service
echo -e "\n$LINE\nCapturing logs for MariaDB service...\n$LINE"
docker-compose logs mysql > $MARIADB_LOG_FILE

echo -e "\n$LINE\nLogs have been saved in $TIMESTAMPED_LOG_DIR\n$LINE"

# Check the status of docker containers and images
echo -e "\n$LINE\nContainer status:\n$LINE"
docker ps

echo -e "\n$LINE\nAll containers:\n$LINE"
docker container ls -a

echo -e "\n$LINE\nDocker images:\n$LINE"
docker image ls

# Display the folder structure of logs-container
echo -e "\n$LINE\nFolder structure of $LOG_DIR:\n$LINE"
if command -v tree &>/dev/null; then
    tree $LOG_DIR
else
    echo "tree command not found, using alternative..."
    find $LOG_DIR -type f | sed -e 's|[^/]*/|—|g;s|—| |g'
fi

# Indicate completion
echo -e "\n$LINE\n.......... DONE ..........\n$LINE"

# Change to the logs directory for the current run
cd logs-container/$TIMESTAMP  # or cd logs-container/$TIMESTAMP

# Print out each log file
for log in *.log; do
    echo -e "\n$LINE\nContents of [$log]:\n$LINE\n"
    cat "$log"
    echo -e "\n$LINE\n"
done

# Return to the original directory
cd ../../

