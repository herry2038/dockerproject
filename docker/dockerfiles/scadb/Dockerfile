FROM ubuntu:latest
MAINTAINER Herry 5303802@qq.com
ENV REFRESHED_AT 2017-05-05

# 1.  JDK 1.8
# This is in accordance to : https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
RUN apt-get update && apt-get install -y --allow-unauthenticated python-software-properties
RUN apt-get install -y --allow-unauthenticated software-properties-common 

RUN add-apt-repository ppa:webupd8team/java

RUN apt-get update && \
	apt-get install -y --allow-unauthenticated openjdk-8-jdk && \
	apt-get clean;
	
# Fix certificate issues, found as of 
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/983302
RUN apt-get update && \
	apt-get install ca-certificates-java && \
	apt-get clean && \
	update-ca-certificates -f;

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME


# 2. Install packages: mysql adds a root user with no password
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -yq --allow-unauthenticated install mysql-server && \
  apt-get -yq --allow-unauthenticated install wget && \
  rm -rf /var/lib/apt/lists/*

# Change mysql to listen on 0.0.0.0
#ADD bind_0.cnf /etc/mysql/conf.d/bind_0.cnf

# 3. Zk

ARG MIRROR=http://apache.mirrors.pair.com
ARG VERSION=3.4.10

LABEL name="zookeeper" version=$VERSION

RUN mkdir -p /opt/zookeeper \
    && wget -q -O - $MIRROR/zookeeper/zookeeper-$VERSION/zookeeper-$VERSION.tar.gz \
      | tar -xzC /opt/zookeeper --strip-components=1 \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper




# 4. env
RUN echo "127.0.0.1 herrypc" >> /etc/hosts

# setup our entry point



ADD startup.sh /startup.sh
ADD init.sh /init.sh
RUN chmod 755 /*.sh

#ENTRYPOINT ["/init.sh"]

ADD scadb_2.11-1.0.0-bin.tar.gz /data/
ADD scadb-admin-2.11-1.0.0-bin.tar.gz /data/
ADD scadb-tools-2.11-1.0.0-bin.tar.gz /data/

RUN /init.sh

EXPOSE 3306
EXPOSE 2181 2888 3888


ENTRY ["startup.sh"]
CMD [""]
