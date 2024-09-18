#!/bin/bash

echo "-------------------------------------------------"
echo " Shutting down the Containers, running if any    "
echo "-------------------------------------------------"
docker compose down
echo " "

echo "---------------------------------"
echo " Spinning up the Containers    "
echo "---------------------------------"
docker compose up -d
echo " "

echo "========================================================"

source cmdToRun-docker-listing-containers.sh

echo "Done"


