#!/bin/bash

:<<!
while 循环

while [ 条件判断式 ]
do 
	程序
done
!

# 从命令行输入一个数n， 统计1+。。。+n的值是多少
SUM=0
i=1
while [ i -le $1 ]
do 
	SUM=$[$SUM+$i]
	i=$[$i+1]
done

echo "for 循环算出结果 $SUM"

SUM2=0
for((i=1;i<=$1;i++))
do
	SUM2=$[$SUM2+$i]
done

echo "for 循环算出结果 $SUM2"
