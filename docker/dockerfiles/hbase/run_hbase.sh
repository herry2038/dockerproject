sudo docker build -t herry2038/hbase .
sudo docker stop hbase-docker
sudo docker rm hbase-docker
sudo docker run -v /data/tmp/hbase:/data -p 9090:9090 -p 16010:16010 -h hbase-docker -d --name hbase-docker herry2038/hbase 
#sudo docker logs -f elk
