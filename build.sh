#!/usr/bin/env bash 

docker build --pull -t hoking007/qq .
docker build --pull -t shunf4/wechat ./wechat
docker build --pull -t shunf4/tim ./tim

docker stop wechat
docker stop qq
docker rm -f wechat
docker rm -f qq

