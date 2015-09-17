FROM node:4.0

RUN set -x && \
	mkdir -p /opt/statsd && cd /opt/statsd && \
	git clone https://github.com/etsy/statsd.git . && \
	npm install statsd-influxdb-backend

COPY ./fs /

EXPOSE 8125/udp

CMD [ "/sbin/run.sh" ]