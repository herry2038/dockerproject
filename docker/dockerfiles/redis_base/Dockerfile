FROM ubuntu:14.04
MAINTAINER herry2038 coolguy77cn@qq.com
ENV REFRESHED_AT 2016-05-31

RUN apt-get -yqq update
RUN apt-get install -yqq software-properties-common python-software-properties
RUN add-apt-repository ppa:chris-lea/redis-server
RUN apt-get -yqq update
RUN apt-get -yqq install redis-server redis-tools

VOLUME ["/var/lib/redis", "/var/log/redis"]

EXPOSE 6379
CMD []


