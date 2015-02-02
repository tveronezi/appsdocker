#!/usr/bin/env bash
docker kill msglnk || true
docker rm msglnk || true
docker build -t msglnk .
docker run -d \
 --link=activemq:activemq \
 --name=msglnk msglnk
