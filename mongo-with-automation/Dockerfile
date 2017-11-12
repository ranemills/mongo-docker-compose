FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl wget

RUN wget https://cloud.mongodb.com/download/agent/automation/mongodb-mms-automation-agent-latest.linux_x86_64.tar.gz -O /tmp/mongodb-mms-automation-agent.tar.gz

RUN tar -xf /tmp/mongodb-mms-automation-agent.tar.gz -C /tmp/
RUN mv /tmp/mongodb-mms-automation-agent-4.5.3.2339-1.linux_x86_64 /opt/mongodb-mms-automation-agent

RUN mkdir -m 755 -p /var/lib/mongodb-mms-automation
RUN mkdir -m 755 -p /var/log/mongodb-mms-automation
RUN mkdir -m 755 -p /data

COPY config/automation-agent.conf /opt/mongodb-mms-automation-agent/local.config

COPY startup.sh /tmp/startup.sh
RUN chmod +x /tmp/startup.sh

ENTRYPOINT [ "/tmp/startup.sh" ]