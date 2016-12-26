sudo docker build -t herry2038/mongodb-3.3 .
sudo docker stop mongodb
sudo docker rm mongodb
sudo docker run -v /data/tmp/mongodb:/data/mongodb -p 27017:27017 -d -h mongodb1 --name mongodb herry2038/mongodb-3.3 --replSet rs0
