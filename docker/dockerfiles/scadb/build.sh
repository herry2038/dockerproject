cp /data/tmp/scadb_2.11-1.0.0-bin.tar.gz .
cp /data/tmp/scadb-admin-2.11-1.0.0-bin.tar.gz .
cp /data/tmp/scadb-tools-2.11-1.0.0-bin.tar.gz .

docker build -t herry2038/scadb .

rm scadb*
