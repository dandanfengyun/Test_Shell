#!/bin/bash

:<<!

系统函数：

1.basename 基本语法
功能 返回完整路径最后 / 的部分，常用语获取文件名
basename [pathname] [suffix]
basename [string] [suffix] (功能描述：basename命令会删除说有的前缀包括最后一个 / 字				符， 然后将字符串显示出来)
      suffix 为后缀，如果suffix被指定了，basename会将pathname或string中的suffix去掉

2.dirname 基本语法
功能：返回完整路径最后 / 的前面的部分 常用于返回路径部分

dirname 文件绝对路径 从给定的包含绝对路径的文件路径中去除文件名（非目录）的部分，然后返回剩下的路径（目录部分）


调用方法
终端直接调用
basename /home/frng/test.txt
basename /home/frng/test.txt .txt
dirname /home/frng/test.txt
!

# 实例1  返回 /home/frng/test.txt 的 test.txt部分
# 实例2	 返回 /home/frng/test.txt 的 /home/frng部分

