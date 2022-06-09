# Cluster


subnet 192.168.33.0/24

gateway 192.168.33.1

| Cotainer name      | Hostname | **IP**           | **Services**                   |
| ----------- | ------ | ---------------- | -------------------------- |
| namenode    | nnode1 | 192.168.33.10/24 | NameNode                   |
| secnamenode | nnode2 | 192.168.33.11/24 | SecondaryNamenode          |
| resmgr      | mgr    | 192.168.33.12/24 | ResourceManager,JobHistory |
| datanode1   | dnode1 | 192.168.33.13/24 | DataNode，NodeManager      |
| datanode2   | dnode2 | 192.168.33.14/24 | DataNode，NodeManager      |
| datanode3   | dnode3 | 192.168.33.15/24 | DataNode，NodeManager      |
