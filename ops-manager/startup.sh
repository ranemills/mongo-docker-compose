#!/usr/bin/env sh

/tmp/share/wait-for-it.sh -t 60 opsmanager_mongo:27017

service mongodb-mms start

tail -f /dev/null
