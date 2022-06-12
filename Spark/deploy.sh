docker run -d -p 8080:8080 --network hadoop --ip 192.168.33.31 --hostname master --name master bakaft/spark
docker run -d --network hadoop --ip 192.168.33.32 --hostname slave1 --name slave1 bakaft/spark
docker run -d --network hadoop --ip 192.168.33.33 --hostname slave2 --name slave2 bakaft/spark