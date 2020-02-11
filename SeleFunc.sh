#!/bin/bash

:<<!
自定义 函数

# 中括号[]内内容表示可写可不写

定义
[function] funcname[()]
{
	Action;
	[return int;]
}

调用	直接写函数名
funcname [值1 值2 ...]


但是 Shell 中的返回值表示的是函数的退出状态：返回值为 0 表示函数执行成功了，返回值为非 0 表示函数执行失败（出错）了。if、while、for 等语句都是根据函数的退出状态来判断条件是否成立。

真正想要获得返回结果 可以使用echo $() 可以捕获函数内的echo
!

#  计算输入的两个参数的和， read 

function getSum()
{
	SUM=$[$n1+$n2]
	echo "$SUM"
}

read -p "请输入第一个数n1" n1
read -p "请输入第二个数n2" n2

# 调用
getSum $n1 $n2

a=$(getSum $n1 $n2)
echo "a的值是$a"
