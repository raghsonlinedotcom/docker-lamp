#!/bin/bash

echo "-------------------------------------------------"
echo "  1. Bringing down the containers running if any "
echo "-------------------------------------------------"
docker compose down --volumes

echo "-------------------------------------------------"
echo "  2. Spinning Up the containers running          "
echo "-------------------------------------------------"
docker compose up -d 


echo "-------------------------------------------------"
echo "  3. Viewing the Logs of the containers          "
echo "-------------------------------------------------"
docker logs docker-lamp-mariadb-server
docker logs docker-lamp-apache-server 

echo "-------------------------------------------------"
echo "  4. Getting into the Bash of MariaDB Server     "
echo "-------------------------------------------------"
#docker exec -it docker-lamp-mariadb-server /bin/bash

echo "-------------------------------------------------"
echo "  5. Verify the contents in the MariaDB Server   "
echo "-------------------------------------------------"
#docker exec -it docker-lamp-mariadb-server /bin/bash < mariadb-verify.sh
#docker run docker-lamp-mariadb-server /bin/bash mariadb-verify.sh
