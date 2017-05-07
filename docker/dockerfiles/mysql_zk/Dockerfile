FROM herry2038/zookeeper
MAINTAINER Herry 5303802@qq.com
ENV REFRESHED_AT 2017-05-05


# 2. Install packages: mysql adds a root user with no password
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -yq --allow-unauthenticated install mysql-server && \
  apt-get -yq --allow-unauthenticated install wget && \
  rm -rf /var/lib/apt/lists/*

# Change mysql to listen on 0.0.0.0
#ADD bind_0.cnf /etc/mysql/conf.d/bind_0.cnf

# 3. env
RUN echo "127.0.0.1 herrypc" >> /etc/hosts

EXPOSE 3306

CMD ["/usr/bin/mysqld_safe"]
