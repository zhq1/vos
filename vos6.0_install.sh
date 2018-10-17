关闭iptables 还有selinux



sh create_user_kunshi.sh
sh create_user_kunshiweb.sh
=============先删除系统自带的mysql-libs==============
rpm -qa|grep mysql
rpm -e mysql-libs-5.1.73-8.el6_8.x86_64 --nodeps
===============================
rpm -ivh MySQL-server-community-5.0.96-1.rhel5.x86_64.rpm

rpm -ivh MySQL-client-community-5.0.96-1.rhel5.x86_64.rpm

vi /etc/my.cnf
=======================按i进入编辑状态，复制粘贴以下数据===================
[client]
port=3306
default-character-set=utf8
[mysqld]
default-character-set=utf8
max_connections=160
interactive_timeout=310000
wait_timeout=31000
query_cache_size=48M
table_cache=320
tmp_table_size=52M
thread_cache_size=8
sort_buffer_size=256K
innodb_thread_concurrency=8
myisam-recover=FORCE
max_allowed_packet=32M
innodb_file_per_table=1

===========================================================================
 service mysql restart

rpm -ivh jdk-6u45-linux-amd64.rpm


tar zxvf apache-tomcat-7.0.23.tar.gz
mv apache-tomcat-7.0.23 /home/kunshiweb/base/apache-tomcat
tar -zxvf jrockit-jdk1.6.0_33-R28.2.4-4.1.0.tar.gz
cp -r ./jrockit-jdk1.6.0_33-R28.2.4-4.1.0/ /home/kunshi/base/jdk_default
cp -r ./jrockit-jdk1.6.0_33-R28.2.4-4.1.0/ /home/kunshiweb/base/jdk_default
rpm -ivh emp-2.1.6-00.noarch.rpm
rpm -ivh vos3000-2.1.6-00.i586.rpm

rpm -ivh vos3000-web-2.1.6-00.i586.rpm
rpm -ivh vos3000-webdata-2.1.6-00.i586.rpm


rpm -ivh mbx3000-2.1.6-00.i586.rpm

rpm -ivh vos3000-webserver-2.1.6-00.i586.rpm

rpm -ivh mgc-2.1.6-00.i586.rpm

rpm -ivh servermonitor-2.1.6-00.i586.rpm
rpm -ivh callservice-2.1.6-00.i586.rpm

rpm -ivh dial-2.1.6-00.i586.rpm
rpm -ivh valueadded-2.1.6-00.i586.rpm


mkdir /home/kunshi/license




重启
/etc/init.d/mgcd restart
/etc/init.d/vos3000d restart
/etc/init.d/webserverd restart
/etc/init.d/webdatad restart
/etc/init.d/callserviced restart
/etc/init.d/servermonitord restart
/etc/init.d/mbx3000d restart
/etc/init.d/valueaddedd restart
/etc/init.d/diald restart