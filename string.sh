#!/bin/sh
string="It's a string. And another string"
#计算字符串字符数量
echo "字符数量为：${#string}"
echo "按照分隔符删除右侧保留左侧: ${string%.*}, ${string%%.*}"
#注意：下面使用的是#*. ##*.，#表示从左向右匹配，%表示从右向左匹配
echo "按照分隔符删除左侧保留右侧：${string#*.}, ${string##*.}"
echo "替换字符串: ${string/string/array}, ${string//string/arry}, $string"
#下面是截取字符串
echo "从第三个字符截取长度为5的字符串：${string:3:5}"
echo "从有限第三个字符截取长度为5的字符串：${string:0-13:5}"
#字符串的检测与替换
echo ${ndefined:-}
echo $ndefined
echo ${ndefined:-"replaced"}
echo $ndefined
echo "------------------------"
echo ${ndefined:="assigned"}
echo $ndefined
echo ${ndefined:+"replaced"}
echo $ndefined
echo "------------------------"
#还是不太清楚这个的意思
echo ${ndefined:?"messages"}

