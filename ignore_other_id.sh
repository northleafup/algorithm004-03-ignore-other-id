#!/bin/bash
# 第一：获取学号
if [ $# != 1 ] ; then 
    echo "请提供以下的参数：学号(数字类型)"
	exit 1; 
fi 
idnum=$1

# 第二：忽略此学号文件夹以外的内容
echo "讲师课件/*" >> .git/info/exclude
echo "Week 预习周/*" >> .git/info/exclude
echo "!Week 预习周/id_"$idnum"/" >> .git/info/exclude
echo "!Week 预习周/id_"$idnum"/*">> .git/info/exclude
for i in {1..7}
do
    echo "Week 0"$i"/*" >> .git/info/exclude
    echo "!Week 0"$i"/id_"$idnum"/" >> .git/info/exclude
    echo "!Week 0"$i"/id_"$idnum"/*">> .git/info/exclude
done
