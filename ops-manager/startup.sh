#!/usr/bin/env sh

/tmp/share/wait-for-it.sh -t 60 mongos1:27017;/tmp/share/wait-for-it.sh mongos2:27017

service mongodb-mms start

tail -f /dev/null
