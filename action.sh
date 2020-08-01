#!/bin/bash
. /etc/init.d/functions
if [ $# -ne 1 ]
  then
    echo "USAGE $0 {start | stop | restart}"
    exit 1
fi
if [ "$1" == "start" ]
  then
    action "start nginx" /bin/true
elif [ "$1" == "stop" ]
  then
    action "stop nginx" /bin/true
elif [ "$1" == "restart" ]
  then
    action "restart nginx" /bin/true
else
  echo "USAGE $0 {start | stop | restart}"
  exit 1
fi
