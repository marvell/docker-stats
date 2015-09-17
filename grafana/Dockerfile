FROM ubuntu:15.04

ENV GRAFANA_VERSION 2.1.3
RUN set -x && \
	apt-get update -q && \
	apt-get install -yq curl adduser libfontconfig && \
	curl -s -o /tmp/grafana_latest_amd64.deb https://grafanarel.s3.amazonaws.com/builds/grafana_${GRAFANA_VERSION}_amd64.deb && \
	dpkg -i /tmp/grafana_latest_amd64.deb && \
	rm /tmp/grafana_latest_amd64.deb && \
	rm -rf /var/lib/apt/lists/*

COPY ./fs /

WORKDIR /usr/share/grafana

VOLUME [ "/data" ]
EXPOSE 80

CMD [ "grafana-server", "-config=/etc/grafana.ini" ]