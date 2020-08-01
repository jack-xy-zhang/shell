#!/bin/sh
read -p "Pls input two num:" a b
#使用[]可以进行条件判断，需要注意内部两侧需要留空格。shell中的语句对空格有各种严格的检查，切记切记
[ -z "$a" ] || [ -z "$b" ] && {
    echo "Pls input two num again."
    exit 1
}
expr $a + 0 &> /dev/null
#给变量赋值必须不能有空格
retval1=$?
echo $retval1
expr $b + 0 &> /dev/null
retval2=$?
echo $retval2
test $retval1 -eq 0 -a $retval2 -eq 0 || {
    echo "Pls input two nums again"
    exit 2
}
[ $a -lt $b ] && {
    echo "$a < $b"
    exit 0
}
[ $a -gt $b ] && {
    echo "$a > $b"
    exit 0
}
[ $a -eq $b ] && {
    echo "$a = $b"
    exit 0
}
