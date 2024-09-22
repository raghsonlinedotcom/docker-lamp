
#!/bin/sh

# Function to check and add to PATH if missing
ensure_in_path() {
    if ! command -v $1 >/dev/null 2>&1; then
        echo "$1 not found in PATH. Attempting to add /usr/bin to PATH."
        PATH=$PATH:/usr/bin
        export PATH
        if ! command -v $1 >/dev/null 2>&1; then
            echo "Failed to add $1 to PATH."
            exit 1
        else
            echo "$1 successfully added to PATH."
        fi
    else
        echo "$1 is in PATH."
    fi
}

# Ensure mysql is in PATH
ensure_in_path mysql

# Ensure mysqld is in PATH
ensure_in_path mysqld

# Verify the presence and permissions of init.sql
FILE="/docker-entrypoint-initdb.d/init.sql"
if [ -f "$FILE" ]; then
    echo "$FILE exists."
    PERMS=$(stat -c "%a" $FILE 2>/dev/null)
    if [ "$PERMS" = "644" ]; then
        echo "Permissions are correct: $PERMS"
    else
        echo "Permissions are incorrect: $PERMS"
        exit 1
    fi
else
    echo "$FILE does not exist."
    exit 1
fi

# Wait for the MySQL service to be ready
until mysqladmin ping -h "127.0.0.1" --silent; do
    echo Waiting for MariaDB...
    sleep 2
done

# Error handling for MySQL commands
mysql -uroot -prootpassword -e "USE DockerMySQLTest; SHOW TABLES;" 2>/dev/null
if [ $? -ne 0 ]; then
    echo Error executing SHOW TABLES command
    exit 1
fi

mysql -uroot -prootpassword -e "USE DockerMySQLTest; SELECT * FROM Test;" 2>/dev/null
if [ $? -ne 0 ]; then
    echo Error executing SELECT command
    exit 1
fi

