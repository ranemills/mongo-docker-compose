#!/usr/bin/env sh

nohup /opt/mongodb-mms-automation-agent/mongodb-mms-automation-agent -f /opt/mongodb-mms-automation-agent/local.config >> automation-agent.log 2>&1 &
tail -f /var/log/mongodb-mms-automation/automation-agent.log