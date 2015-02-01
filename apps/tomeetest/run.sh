#!/usr/bin/env bash
docker kill tomeetest || true
docker rm tomeetest || true
docker build -t tomeetest .
docker run -d --name=tomeetest tomeetest
