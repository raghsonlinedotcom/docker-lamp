#!/bin/bash

echo "-------------------------------------------------"
echo " Shutting down the Containers, running if any    "
#echo "   .. Also cleaning up the volumes               "
echo "-------------------------------------------------"
#docker compose down --volumes
docker compose down 
echo " "
echo " ============= "
echo "Listing the directory tree to verify the contents"
echo " ============= "
tree
echo " "

echo "---------------------------------"
echo " Spinning up the Containers    "
echo "---------------------------------"
docker compose up -d

NOW="$(date +"%F_%T_%p_%Z_%A")" #%A prints the Weekday in fullong format. Ex, Saturday
NOW="$(date +"%F_%T_%p_%Z")"
#$log_file_name='logs-docker-lamp-mariadb-server-$NOW.log'
$log_file_name=logs-docker-lamp-mariadb-server.log
#touch $log_file_name
#docker logs docker-lamp-mariadb-server > "$log_file_name" 
docker logs docker-lamp-mariadb-server > log_docker-lamp-mariadb-server.log 
echo " [%*%] Container Log is written into the file - $log_file_name"

#$log_file_name='logs-docker-lamp-apache-server-$NOW.log'
$log_file_name=logs-docker-lamp-apache-server.log
#touch $log_file_name
#docker logs docker-lamp-apache-server > "$log_file_name"
docker logs docker-lamp-apache-server > log_docker-lamp-apache-server.log
echo " [%*%] Container Log is written into the file - $log_file_name"

echo " "

echo "========================================================"

source cmdToRun-docker-listing-containers.sh

echo "Done"


