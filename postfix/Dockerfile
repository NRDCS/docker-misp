FROM ubuntu:latest

RUN apt-get update -y -q
RUN apt-get install -y libsasl2-modules
RUN apt-get install -y postfix
RUN apt-get install -y opendkim
RUN apt-get install -y ca-certificates tzdata supervisor rsyslog bash opendkim-tools curl libcurl4 postfix-lmdb netcat iproute2

COPY postfix/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
