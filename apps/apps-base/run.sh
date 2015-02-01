#!/usr/bin/env bash
docker rmi apps-base | true
docker build -t apps-base .

