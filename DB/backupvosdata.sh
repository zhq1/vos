#!/usr/bin/env bash
#by Myki
#wget https://21k.oss-cn-qingdao.aliyuncs.com/vos/backupvosdata.sh --no-check-certificate && bash backupvosdata.sh
#只备份数据不备份话单
#停止vos程序
/etc/init.d/vos3000d stop
/etc/init.d/mbx3000d stop
/etc/init.d/vos3000webct stop
/etc/init.d/mgcserverd stop
/etc/init.d/phoneserviced stop
/etc/init.d/vos3000websv stop
/etc/init.d/callserviced stop
/etc/init.d/httpd stop
/etc/init.d/mysql stop
#进入到vos数据库
cd /var/lib/mysql/vos3000/

vosdb=`ls |ls /var/lib/mysql/vos3000/ |grep -v e_cdr`
getip=`curl getip.1nth.com:56667`
mkdir -p /root/backup
cp -dprf $vosdb /root/backup/
cd /root
tar -zcvf vos3000_$getip.tar.gz backup/
