#!/usr/bin/env sh

nohup /opt/mongodb-mms-automation-agent/mongodb-mms-automation-agent >> automation-agent.log 2>&1 &
tail -f automation-agent.log