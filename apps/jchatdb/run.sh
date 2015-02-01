#!/usr/bin/env bash
docker kill jchatdb || true
docker rm jchatdb || true
docker build -t jchatdb .
docker run -d --name=jchatdb \
  -e MYSQL_ROOT_PASSWORD=@_s3cr3t \
  -e MYSQL_USER=test \
  -e MYSQL_PASSWORD=test \
  -e MYSQL_PASSWORD=test \
  -e MYSQL_DATABASE=chat \
  jchatdb
