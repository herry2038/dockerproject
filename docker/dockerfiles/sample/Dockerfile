# Version: 0.0.1
FROM ubuntu:14.04
MAINTAINER herry "coolguy77cn@qq.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

#RUN echo 'Hi, I am in your container' > /usr/share/nginx/html/index.html
EXPOSE 80
