sudo docker build -t herry2038/logstash-1.4-lc .
sudo docker stop logstash
sudo docker rm logstash
sudo docker run -d -v /data/services/cdb/slowlog:/data/services/cdb/slowlog --name logstash herry2038/logstash-1.4-lc
sudo docker logs -f logstash
