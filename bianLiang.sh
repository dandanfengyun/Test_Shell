#! /bin/bash

# 系统变量
#echo "PATH=$PATH"
echo "user=$USER"

# 自定义变量
A=100
echo "A=$A"	# 变量引用 前面加上$符号
unset A		# 撤销变量
echo "A=$A"

readonly A=99	# 定义不可变变量
echo "A=$A" # ./bianLiang.sh: line 13: unset: A: cannot unset: readonly variable
A=200		# 不可变变量不可重新赋值
unset A		# 不可变变量不可以撤销
echo "A=$A"

MYNUM=89
echo "$MYNUM"
MYNUME = 89	# =两边不能有空格
echo "MYNUME=$MYNUME"	

myDate1=`date`	# 将命令执行结果返回给变量方式1
myDate2=$(date)	# 将命令执行结果返回个变量方式2

echo "date=$myDate1"	# date=2020年 02月 11日 星期二 11:08:43 CST
echo "date=$myDate2"	# date=2020年 02月 11日 星期二 11:08:43 CST

:<<!
这是多行注释的写法
很奇怪的语法啊
我的天
即使是注释 里面最好也不要出现$(())
!

# 设置环境变量 使之可以在其他shell文件中使用
# 使用export 指令输出一个环境变量。
# 为了生效 还需刷新一下该文件 source 文件绝对路径
MyName=FengYun
export MyName


# 预定义变量  shell设计者实现已经定义好的变量 可在shell 脚本中使用
:<<!
基本语法：
$$	当前进程的进程号 PID
$!	后台运行的最后一个进程的进程号 PID
$?	最后一次执行命令的返回状态，如果变量的值为0 说明上一个命令正确执行，如果变	   量值非0，（具体那个数由命令自己决定），则证明上一个命令执行不正确
!
echo "当前进程的进程号=$$"
# 可在后台运行HelloShell.sh  ./HelloShell.sh &
./HelloShell.sh &
echo "后台运行的最后一个进程进程号=$!"
echo "执行命令的返回状态=$?"
echo "$((10+ 5))"
echo "$?"


