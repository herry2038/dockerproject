FROM sebp/elk:E1L1K4

# Add slow log file
ADD 02-slowlog-input.conf /etc/logstash/conf.d/02-slowlog-input.conf
ADD 30-output.conf /etc/logstash/conf.d/30-output.conf
ADD 11-filter.conf /etc/logstash/conf.d/11-filter.conf
ADD template_cdbslowlog.json /etc/elasticsearch/templates/template_cdbslowlog.json


VOLUME [ "/slowlog" ]
