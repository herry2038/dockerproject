FROM herry2038/redis
MAINTAINER herry coolguy77cn@qq.com
ENV REFRESHED_AT 2016-05-31
ENTRYPOINT [ "redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis_primary 6379" ]

