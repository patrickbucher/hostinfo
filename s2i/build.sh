#!/bin/sh

docker build -t hostinfo-base - < ../base/Dockerfile
docker build -t hostinfo-s2i .
s2i build https://github.com/patrickbucher/hostinfo.git hostinfo-s2i hostinfo
docker run -p 8080:8080 -dit hostinfo
