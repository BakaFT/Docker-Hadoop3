echo '----------Services running on master(192.168.34.10):'
docker exec -it master /bin/bash -c 'jps'
echo '----------Services running on slave1(192.168.34.11):'
docker exec -it slave1 /bin/bash -c 'jps'
echo '----------Services running on slave2(192.168.34.12):'
docker exec -it slave2 /bin/bash -c 'jps'
echo '----------Services running on slave3(192.168.34.13):'
docker exec -it slave3 /bin/bash -c 'jps'