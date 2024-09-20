# Manual Verification

```
# Verify Apache is running and serving content
curl http://localhost:8181

# Check the Apache container logs for any issues
docker logs docker-lamp-apache-server --tail 50

# Enter the Apache container for further inspection
docker exec -it docker-lamp-apache-server /bin/bash

# Verify MariaDB is running and accepting connections
docker exec -it docker-lamp-mariadb-server mysql -uroot -prootpassword -e "SHOW DATABASES;"

# Check the MariaDB container logs for any issues
docker logs docker-lamp-mariadb-server --tail 50

# Enter the MariaDB container for further inspection
docker exec -it docker-lamp-mariadb-server /bin/bash

# (Inside MariaDB container) Verify the presence of tables and data
mysql -uroot -prootpassword -e "USE DockerMySQLTest; SHOW TABLES;"
mysql -uroot -prootpassword -e "USE DockerMySQLTest; SELECT * FROM Test;"
```
## Add $PATH with the path to mysql

```sh
sed -i '/environment:/a \ \ \ \ PATH: \"/usr/lib/mysql:/etc/mysql:/usr/share/mysql:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin\"' docker-compose.yml
```

# This command will add the necessary paths to the PATH environment variable in your `docker-compose.yml`.

# After modifying the `docker-compose.yml`, restart the services:
```sh
docker-compose down
docker-compose up -d
```

### Explain

explain the sed command 
The `sed` command provided modifies the `docker-compose.yml` file to add the necessary directories to the `PATH` environment variable within the `mysql` service configuration.

Here's a breakdown of the `sed` command:

`sed`: The stream editor used for parsing and transforming text.

`-i`: This flag allows `sed` to edit files in place, directly modifying the input file (`docker-compose.yml`).

`'/environment:/a \ \ \ \ PATH: "/usr/lib/mysql:/etc/mysql:/usr/share/mysql:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'`:
- `'/environment:/`: This part searches for the line containing the term `environment:`.
- `a \ \ \ \ PATH: "...` : This part appends the `PATH` environment variable after the `environment:` line. The `\\ \\ \\ \\` provides appropriate indentation according to YAML formatting.

`docker-compose.yml`: The target file to be modified.

This ensures that the modified `docker-compose.yml` file includes the required paths in the `PATH` environment variable for the `mysql` service

