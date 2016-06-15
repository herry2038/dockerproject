FROM ubuntu:14.04
MAINTAINER herry coolguy77cn@qq.com
ENV REFRESHED_AT 2016-06-02


RUN apt-get -yqq update
RUN apt-get -yqq install wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo 'deb http://packages.elasticsearch.org/logstash/1.4/debian stable main' > /etc/apt/sources.list.d/logstash.list
RUN apt-get -yqq update
RUN apt-get -yqq install logstash

ADD logstash.conf /etc/


VOLUME [ "/data/services/cdb/slowlog" ]

WORKDIR /opt/logstash

ENTRYPOINT ["bin/logstash"]
CMD [ "--config=/etc/logstash.conf" ]

