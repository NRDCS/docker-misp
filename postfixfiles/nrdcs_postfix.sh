#!/bin/bash

/usr/sbin/postfix -c /etc/postfix start

while kill -0 "`cat /var/spool/postfix/pid/master.pid`"; do
  sleep 5
done

/etc/init.d/supervisor stop
