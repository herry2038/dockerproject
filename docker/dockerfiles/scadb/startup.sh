#/bin/bash
/usr/bin/mysqld_safe  &
/opt/zookeeper/bin/zkServer.sh start
/opt/scadb/scadb-admin-2.11-1.0.0/bin/scadb admin &
/opt/scadb/scadb_2.11-1.0.0/bin/scadb server

