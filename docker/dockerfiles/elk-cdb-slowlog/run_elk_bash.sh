sudo docker build -t herry2038/elk-cdb-slowlog .
sudo docker stop elk
sudo docker rm elk
sudo docker run -v /data/services/cdb/slowlog:/slowlog -p 5601:5601 -p 9200:9200 -p 5044:5044 -p 5000:5000 -it --name elk herry2038/elk-cdb-slowlog /bin/bash
#sudo docker logs -f elk
