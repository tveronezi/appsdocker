#!/usr/bin/env bash
docker kill faceid || true
docker rm faceid || true
docker build -t faceid .
docker run -d \
 --link=activemq:activemq \
 --name=faceid faceid
