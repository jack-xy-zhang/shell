#!/bin/sh
docker inspect `docker ps | awk 'NR==2{print $1}'`
#为什么下面的语句是不对的？
docker ps | awk 'NR==2{print $1}' | docker inspect
