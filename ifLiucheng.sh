#!/bin/bash

:<<!
if 流程控制

格式1:
if [ 条件判断式 ];then
	程序
fi

格式2:
if [ condition ]
then
	程序
	elif [ 条件判断式 ]
	then
		程序
else
	程序
fi

一般推荐使用格式2
!

#例子 请编写一个shell程序，如果输入的参数，大于等于60，则输出"及格了"，小于60，输出"不及格"

if [ $# -eq 1 ]	# 如果输出的参数个数唯一进行判断，否则不判断
then
	if [ $1 -ge 60 ] # 判断参数是不是大于等于60
	then
		echo "及格了"
	elif [ $1 -lt 60 ]
	then
		echo "不及格"
	fi
#elif [ $# -ne 1 ] # 传入参数个数如果不为1
#then
#	echo "传入的参数错误"a
else
	echo "传入参数有错误"
fi


:<<!
if [ $1 -ge 60 ] # 判断参数是不是大于等于60
then
        echo "及格了"
elif [ $1 -lt 60 ]
then
        echo "不及格"
fi
!
