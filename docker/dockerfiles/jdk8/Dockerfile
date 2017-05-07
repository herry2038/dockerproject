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

