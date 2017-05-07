#mysql_install_db

chmod +x /data/scadb-tools-2.11-1.0.0/bin/scadb
chmod +x /data/scadb-admin-2.11-1.0.0/bin/scadb
chmod +x /data/scadb_2.11-1.0.0/bin/scadb
mkdir /var/run/mysqld
chown mysql /var/run/mysqld
#mysqld --initialize --user=mysql --datadir=/var/lib/mysql

/usr/bin/mysqld_safe &
/opt/zookeeper/bin/zkServer.sh start 
sleep 10s

echo "GRANT ALL ON *.* TO scadb@'%' IDENTIFIED BY 'scadb' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql
/data/scadb-tools-2.11-1.0.0/bin/scadb org.herry2038.scadb.tools.InitEnv 

killall mysqld
killall java
sleep 10s
