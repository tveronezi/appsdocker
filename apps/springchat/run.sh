#!/usr/bin/env bash
docker kill springchat || true
docker rm springchat || true
docker build -t springchat .
docker run -d \
 --link=activemq:activemq \
 --link=springchatdb:springchatdb \
 --name=springchat springchat
