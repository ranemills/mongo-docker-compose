FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl wget

RUN cd /opt
RUN curl -OL https://cloud.mongodb.com/download/agent/automation/mongodb-mms-automation-agent-latest.linux_x86_64.tar.gz

RUN tar -xf mongodb-mms-automation-agent-latest.linux_x86_64.tar.gz

RUN mkdir -m 755 -p /var/lib/mongodb-mms-automation
RUN mkdir -m 755 -p /var/log/mongodb-mms-automation
RUN mkdir -m 755 -p /data

COPY config/automation-agent.properties /opt/

COPY startup.sh /tmp/startup.sh
RUN chmod +x /tmp/startup.sh

ENTRYPOINT [ "/tmp/startup.sh" ]