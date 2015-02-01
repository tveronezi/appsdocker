#!/usr/bin/env bash
export JAVA_OPTS="-Xmx512m -XX:PermSize=256m" && cd /opt/sources/tomee && git pull && mvn clean install -o
