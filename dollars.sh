#!/bin/bash
#使用$#输出参数的格数
echo "We have $# parameters."
#按顺序输出参数
echo $0 $1 $2
#输出$*和$@
echo $*
echo $@
OLD="I am an old boy"
echo "The parameter number is $#"
echo "The string length is ${#OLD}"
echo "The string start 2 is ${OLD:2}"
echo "The string start 2 with length 5 is ${OLD:2:5}"
echo "We can seperate the string by the whitespace"
set -- $OLD
echo "The fifth word is $5"
