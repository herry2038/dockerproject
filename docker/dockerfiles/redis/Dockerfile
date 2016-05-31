FROM ubuntu:14.04
MAINTAINER Herry coolguy77cn@qq.com
ENV REFRESHED_AT 2016-05-31
RUN apt-get update
RUN apt-get -y install redis-server redis-tools
EXPOSE 6379
ENTRYPOINT ["/usr/bin/redis-server"]
CMD []

