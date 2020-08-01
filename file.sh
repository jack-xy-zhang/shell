#!/bin/sh
path=/server/scripts
file=if3.sh
if [ ! -d $path ]
    then
        mkdir -p $path
        echo "$path is not exist, create it already"
else
    echo "$path is already existed."
fi
if [ ! -f $path/$file ]
    then
      touch $path/$file
      echo "$path/$file is not exist, create it already"
else
    echo "$path/$file already exists"
fi
ls -l $path/$file
