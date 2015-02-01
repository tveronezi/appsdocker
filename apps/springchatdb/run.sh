#!/usr/bin/env bash
docker kill springchatdb || true
docker rm springchatdb || true
docker build -t springchatdb .
docker run -d --name=springchatdb \
  -e MYSQL_ROOT_PASSWORD=@_s3cr3t \
  -e MYSQL_USER=test \
  -e MYSQL_PASSWORD=test \
  -e MYSQL_PASSWORD=test \
  -e MYSQL_DATABASE=springchatdb \
  springchatdb
