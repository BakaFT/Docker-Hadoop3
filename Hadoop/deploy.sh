#!/bin/bash

#docker network create --driver bridge --subnet 192.168.33.0/24  --gateway 192.168.33.1 hadoop

echo "Creating containers"
#namenode
docker run -d --hostname nnode1 -P --name namenode -p 9870:9870 --network hadoop --ip 192.168.33.10  bakaft/hadoop:cluster
#secondary namenode
docker run -d --hostname nnode2 --name secnamenode --network hadoop --ip 192.168.33.11  bakaft/hadoop:cluster

#resmgr
docker run -d --hostname mgr --name resmgr -p 8088:8088 -p 19888:19888 --network hadoop --ip 192.168.33.12 bakaft/hadoop:cluster

#datanode 1
docker run -d --hostname dnode1 --name datanode1 --network hadoop --ip 192.168.33.13 bakaft/hadoop:cluster

#datanode 2
docker run -d --hostname dnode2 --name datanode2 --network hadoop --ip 192.168.33.14 bakaft/hadoop:cluster

#datanode 3
docker run -d --hostname dnode3 --name datanode3 --network hadoop --ip 192.168.33.15 bakaft/hadoop:cluster

echo "Formatting namenode"
docker exec -it namenode /bin/bash -c 'hdfs namenode -format'
