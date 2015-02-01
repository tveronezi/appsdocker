#!/usr/bin/env bash
docker kill activemq || true
docker rm activemq || true
docker build -t activemq .
docker run -d --name=activemq activemq
