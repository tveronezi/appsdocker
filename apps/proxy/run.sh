#!/usr/bin/env bash
docker kill proxy || true
docker rm proxy || true
docker build -t proxy .
docker run -d -p 80:80 -p 8000:8000 \
  --link=tomeetest:tomeetest \
  --link=jchat:jchat \
  --link=springchat:springchat \
  --link=activemq:activemq \
  --link=boxdata:boxdata \
  --name=proxy proxy
