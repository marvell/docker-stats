#!/bin/bash

set -xe

INFLUXDB_PASS=${INFLUXDB_PASS:-"root"}

docker-compose stop
docker-compose rm -f
rm -rf ./data/*

docker-compose build

docker-compose up -d influxdb
sleep 2
docker exec stats_influxdb_1 /opt/influxdb/influx -execute "CREATE USER root WITH PASSWORD '${INFLUXDB_PASS}' WITH ALL PRIVILEGES"

docker-compose up -d
docker-compose ps
