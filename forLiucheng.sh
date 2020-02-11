#!/bin/bash

:<<!

# 基本语法1
for 变量 in 值1 值2 值3...
do
	程序
done

# 基本语法2
for((初始值;循环控制条件;变量变化))
do
	程序
done
!

# 测试
for k in 10 20 30 40
do 
	echo "$k"
done

# 打印命令行输入的参数 $*  $@区别
echo "*传入的参数 $*"
for i in $*
do
	echo "canshu $i"
done

# 加不加"" 区别很大， $* 加上冒号表示一个整体
echo "*传入的参数 $*"
for i in "$*"
do
        echo "canshu $i"
done

# $@ 即使加上冒号 还是分开来看的
echo "@传入的参数 $@"
for j in "$@"
do 
	echo "canshu $j"
done

# 实例 从1加到100 输出显示
sum1=0
for((i=1;i<=100;i++))
do
	sum1=$[$sum1+$i]
done

echo $sum1

sum2=0


