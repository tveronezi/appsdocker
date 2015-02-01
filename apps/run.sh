#!/usr/bin/env bash

cd buildbox && ./run.sh && cd ..
cd apps-base && ./run.sh && cd ..
cd tomeetest && ./run.sh && cd ..
cd activemq && ./run.sh && cd ..
cd jchatdb && ./run.sh && cd ..
cd jchat && ./run.sh && cd ..
cd proxy && ./run.sh && cd ..

