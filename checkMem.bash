#!/bin/bash
free_mem=`free -m|awk 'NR==3 {print $NF}'`
if [ $free_mem -lt 800 ] 
  then
    echo "mem is not enough, $free_mem remained"
else
    echo "mem is $free_mem"
fi
