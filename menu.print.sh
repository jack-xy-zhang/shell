#!/bin/sh
#define a function to print the menu
function menu(){
    cat <<END
        1.[install lamp]
        2.[install lnmp]
        3.[exit]
        pls input the num you want: 
END
}
#通过while设置无限循环，和中括号之间需要有空格
#while [ 1 ]
#while ((1))
# while后面可以使用中括号或者两个小括号，单个小括号不可以
#while ( 1 )
while ((1))
do
menu
read -t 15 choice
#[ $choice -ne 1 -a $choice -ne 2 -a $choice -ne 3 ]&&{
#    echo "Pls input the right num"
#    exit 1
#}
#上面的条件判断也可以通过双小括号的方式，类C的语法
if (($choice !=1 && $choice != 2 && $choice !=3 )); then 
    echo "Pls input the right num"
    exit 1
else
    echo "Your choice is $choice"
fi

[ $choice -eq 1 ]&&{
    echo "Installing lamp"
    sleep 3
    echo "lamp is installed"
}

[ $choice -eq 2 ]&&{
    echo "Installing lnmp"
    sleep 3
    echo "lnmp is installed"
}

[ $choice -eq 3 ]&&{
    exit 0
}
done
