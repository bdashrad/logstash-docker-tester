# dockerfile for logstash input
FROM logstash:latest
MAINTAINER Brad Clark <bclark@cainc.com>

EXPOSE 5000
EXPOSE 5001

COPY config/logstash.conf /etc/logstash/conf.d/

CMD ["logstash","-f","/etc/logstash/conf.d/logstash.conf"]