echo "Starting dfs"
docker exec -it namenode /bin/bash -c 'start-dfs.sh'

echo "Please execute below commands in container, or processes will be killed by SIGHUP:"
echo "Execute this command where the ResourceManager stands:"
echo "start-yarn.sh"
echo "Execute this command where the JobHistory stands:"
echo "mapred --daemon start historyserver"

