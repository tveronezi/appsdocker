#!/usr/bin/env bash
docker kill jchat || true
docker kill tomeetest || true
docker kill proxy || true

cd tomeetest && ./run.sh && cd ..
cd jchat && ./run.sh && cd ..
cd proxy && ./run.sh && cd ..

