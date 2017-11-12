FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y supervisor

RUN cd /tmp
RUN curl -OL https://downloads.mongodb.com/on-prem-mms/deb/mongodb-mms_3.4.10.547-1_x86_64.deb && dpkg -i mongodb-mms_3.4.10.547-1_x86_64.deb

RUN apt-get install -y realpath

COPY config/conf-mms.properties /opt/mongodb/mms/conf/conf-mms.properties

COPY startup.sh /tmp/startup.sh
RUN chmod +x /tmp/startup.sh

ENTRYPOINT [ "/tmp/startup.sh" ]
