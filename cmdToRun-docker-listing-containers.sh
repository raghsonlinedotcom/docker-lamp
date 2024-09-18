#!/bin/bash

echo "-------------------------------------------------"
echo "   (Legacy) Listing Docker Active Containers     "
echo "-------------------------------------------------"
docker ps
echo " "

echo "---------------------------------------------"
echo "  (Modern) Listing Docker Containers         "
echo "---------------------------------------------"
docker container ls
echo " "

