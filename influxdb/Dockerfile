FROM ubuntu:15.04

ENV INFLUXDB_VERSION 0.9.4.2
RUN set -x && \
	apt-get update -q && \
	apt-get install -yq curl && \
	curl -s -o /tmp/influxdb_latest_amd64.deb http://influxdb.s3.amazonaws.com/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
	dpkg -i /tmp/influxdb_latest_amd64.deb && \
	rm /tmp/influxdb_latest_amd64.deb && \
	rm -rf /var/lib/apt/lists/*

COPY ./fs /

VOLUME [ "/data" ]
EXPOSE 8083 8086 8088

CMD [ "/opt/influxdb/influxd", "-config=/etc/influxdb.conf" ]
