#!/bin/bash

:<<!
条件判断基本语法
[ condition ]	# condition前后要有空格
非空返回true可用 $? 验证（0 为true, >1 为false）
[ feng ]	# 返回true
[]		# 返回false
[ condition ] && echo OK || echo notok	# 条件满足执行&&后语句 不满足执行 || 后语句

常用 判断条件
1） 两个数字比较
	= 字符串比较  可以用来判断数字
	-lt 小于
	-le 小于等于
	-eq 等于
	-gt 大于
	-ge 大于等于
	-ne 不等于
2）按照文件权限进行判断
	-r 有读的权限
	-w 有写的权限
	-x 有执行的权限

3）按照文件类型进行判断
	-f 文件存在且是一个常规的文件
	-e 文件存在
	-d 文件存在且是一个目录

[ ! condition ]	# 取反
!


# 判断字符串是否相等
if [ "ok" = "ok" ]
then
	echo "相等"
fi

# =是否可以用来判断数字相等
if [ 5 = 5 ]
then
	echo "=可以用来判断数字相等"
fi

if [ 23 -ge 22 ]
then
	echo "大于"
fi

if [ -e /home/frng/mysh/HelloShell.sh ]
then
	echo "文件存在"
fi

if [ -w /home/frng/mysh/HelloShell.sh ]
then
        echo "文件可写"
fi

:<<!
不可 在判断条件中使用 > < 
if [ 2 < 3 ]
then
	echo "2<=3"
fi
!
