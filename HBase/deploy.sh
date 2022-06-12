#!/bin/bash

echo "Creating containers"
docker run -p 16010:16010 --network hadoop --ip 192.168.33.20 -d --hostname master --name master bakaft/hadoop:hbase

docker run -p 16011:16010 --network hadoop --ip 192.168.33.21 -d --hostname slave1 --name slave1 bakaft/hadoop:hbase

docker run  --network hadoop --ip 192.168.33.22 -d --hostname slave2 --name slave2 bakaft/hadoop:hbase

docker run  --network hadoop --ip 192.168.33.23 -d --hostname slave3 --name slave3 bakaft/hadoop:hbase

