#!/bin/bash

:<<!

实例
需求分析
1 每天陵城2:10 备份数据库 test_spider 到 ~/data/backup
2 备份开始和结束备份要给出相应的提示信息
3 备份后的文件要求以备份时间为文件名，并打包成.tar.gz格式
4 备份同时 检查是否有10天前备份的数据库文件，有就将其删除
!

# 备份的路径
BACKUPPATH=/home/frng/data/backup
# 当前时间 作为文件名
DATETIME=$(date +%Y_%m_%d_%H%M%S)

echo "=======开始备份========"
echo "=======备份路径是$BACKUPPATH/$DATETIME.tar.gz"

#主机
HOST=localhost
#用户名
DB_USER=root
#密码
DB_PWD=123456
#数据库名
DATABASE=spider_test

# 创建备份的路径  如果路径存在就使用，否则才创建
[ ! -d "$BACKUPPATH/$DATETIME" ] && mkdir -p "$BACKUPPATH/$DATETIME"

# 执行mysql的备份数据库的指令
mysqldump -u${DB_USER} -p${DB_PWD} --host=${HOST} $DATABASE | gzip > $BACKUPPATH/$DATETIME/$DATETIME.sql.gz

# 打包mysql的备份
cd $BACKUPPATH
tar -zcvf $DATETIME.tar.gz $DATETIME
# 删除临时目录
rm -rf $BACKUPPATH/$DATETIME

# 检查是否有十天前文件 有的话 删除备份文件
find $BACKUPPATH -mtime +10 -name "*.tar.gz" -exec rm -rf {} \; 

echo "======备份文件成功====="
