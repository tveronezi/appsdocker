#!/usr/bin/env bash
docker kill activemq || true
docker kill springchatdb || true
docker kill springchat || true
docker kill jchatdb || true
docker kill jchat || true
docker kill tomeetest || true
docker kill boxdata || true
docker kill proxy || true

cd tomeetest && ./run.sh && cd ..
cd activemq && ./run.sh && cd ..
cd jchatdb && ./run.sh && cd ..
cd jchat && ./run.sh && cd ..
cd springchatdb && ./run.sh && cd ..
cd springchat && ./run.sh && cd ..
cd boxdata && ./run.sh && cd ..
cd proxy && ./run.sh && cd ..

