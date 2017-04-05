#!/bin/bash


# Apache does not like PID files pre-existing
rm -f /var/run/apache2/apache2.pid

#start apache2
usr/sbin/apache2ctl -DFOREGROUND