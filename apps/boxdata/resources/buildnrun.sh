#!/usr/bin/env bash
export JAVA_OPTS="-Xmx512m -XX:PermSize=256m"
cd /opt/sources/boxdata && git pull && mvn clean install
cd /opt/run/runner && mvn clean install tomee:run
