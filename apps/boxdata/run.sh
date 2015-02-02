#!/usr/bin/env bash
docker kill boxdata || true
docker rm boxdata || true
docker build -t boxdata .
docker run -d \
 --name=boxdata boxdata
