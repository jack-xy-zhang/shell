#!/bin/sh
for n in `seq -w 10`
do
  result=`awk -F: '{print $1}' /etc/passwd | grep $oldboy$n`
  echo $result
  if [ "$result" != ""  ]
    then 
      userdel -r oldboy$n
  fi
  useradd oldboy$n &&\
  echo "$RANDUM"|md5sum|cut -c 1-8|passwd --stdin oldboy$n
done
