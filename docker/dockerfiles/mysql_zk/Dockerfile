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

RUN mkdir /var/run/mysqld && chown mysql /var/run/mysqld
RUN echo "#!/bin/bash" >> /run.sh
RUN echo "/opt/zookeeper/bin/zkServer.sh start" >> /run.sh
RUN echo "/usr/bin/mysqld_safe" >> /run.sh
RUN chmod 755 /run.sh
EXPOSE 3306

ENTRYPOINT []

CMD ["/run.sh"]
