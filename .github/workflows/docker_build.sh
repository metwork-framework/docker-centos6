#!/bin/bash

#set -eu
set -x

docker pull metwork/centos6:latest
HASH_BEFORE=`docker images -q metwork/centos6:latest`
docker build -t metwork/centos6:latest .
HASH_AFTER=`docker images -q metwork/centos6:latest`
if [ "${HASH_BEFORE}" != "${HASH_AFTER}" ]; then
    docker push metwork/centos6:latest
fi
