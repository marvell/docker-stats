#!/bin/bash

sleep 3
curl -sG "http://influxdb:8086/query" --data-urlencode "q=CREATE DATABASE statsd" >/dev/null
curl -sG "http://influxdb:8086/query" --data-urlencode "q=ALTER RETENTION POLICY default ON statsd DURATION 14d" >/dev/null
exec node /opt/statsd/stats.js /etc/statsd.js