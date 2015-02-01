#!/usr/bin/env bash
docker kill proxy || true
docker rm proxy || true
docker build -t proxy .
docker run -d -p 80:81 -p 8000:8000 \
  --link=tomeetest:tomeetest \
  --link=jchat:jchat \
  --link=activemq:activemq \
  --name=proxy proxy
