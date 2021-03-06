#!/usr/bin/env bash
docker kill jchat || true
docker rm jchat || true
docker build -t jchat .
docker run -d \
 --link=activemq:activemq \
 --link=jchatdb:jchatdb \
 --name=jchat jchat
