docker run -d -p 8080:8080 -p 18080:18080 --network hadoop --ip 192.168.33.41 --hostname master --name master bakaft/spark:sql
docker run -d --network hadoop --ip 192.168.33.42 --hostname slave1 --name slave1 bakaft/spark:sql
docker run -d --network hadoop --ip 192.168.33.43 --hostname slave2 --name slave2 bakaft/spark:sql
docker run -d -e MYSQL_ROOT_PASSWORD=root --network hadoop --ip 192.168.33.44 --hostname mysqldb --name mysqldb mysql:debian

echo "Formatting namenode"
docker exec -it master /bin/bash -c 'hdfs namenode -format'

