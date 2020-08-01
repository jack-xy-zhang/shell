#!/bin/sh
port=`netstat -lntup|grep 33066|wc -l`
echo $port
if [ $port -ne 1 ]
  then
    /data/3306/mysql start
  else
    echo "MySQL is running"
fi
