#!/bin/bash
echo "We'll read a prameter from the input with timeouut 5s"
read -t 5 -p "Please input:" a
if [ -z "$a" ];then
    echo "You didn't input anything"
else
    echo $a
fi
