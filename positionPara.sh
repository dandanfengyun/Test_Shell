#! /bin/bash

# 位置参数变量 
# 当执行一个shell脚本时，如果希望获取到命令行的参数信息，就可以使用到位置参数变量，
# 比如./myshell.sh 100 200 这就是一个执行shell的命令行们可以在 myshell 脚本中获取到参数信息
# $n n表示数字， $0 表示命令本身， $1-$9代表第一到第九个参数，十以上的参数需要用大括号 如 ${10}
# $* 代表命令行中所有参数， $* 把所有参数看成一个整体
# $@ 也代表命令行中所有参数， 不过把每个参数区分对待
# $# 代表命令行中所有参数的个数

:<<？
asas 
! 还是 ？ 都可以吗
？

# 获取到各个参数  假设命令行只输入两个参数
echo "$0 $1 $2"
echo "$*"
echo "$@"
echo "参数个数=$#"

# 输出结果
:<<!
./positionPara.sh 10 a
10 a
10 a
参数个数=2
!

