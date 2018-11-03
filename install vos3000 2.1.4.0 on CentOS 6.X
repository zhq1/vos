How to install vos3000 2.1.4.0 on CentOS 6.X

Follow the steps

#/etc/init.d/iptables save
#/etc/init.d/iptables stop
#chkconfig iptables off

#/etc/init.d/ip6tables save
#/etc/init.d/ip6tables stop
#chkconfig ip6tables off


#nano /etc/sysconfig/selinux

SELINUX=disabled

#setenforce 0
#sh create_user_kunshi.sh
#sh create_user_kunshiweb.sh

#yum install libc.so.6 -y

#rpm -ivh perl-DBI-1.40-5.i386.rpm

#rpm -ivh MySQL-server-community-5.0.96-1.rhel5.x86_64.rpm
#rpm -ivh MySQL-client-community-5.0.96-1.rhel5.x86_64.rpm

 

#vi /etc/my.cnf

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

 

#service mysql restart
#rpm -ivh jdk-6u45-linux-amd64.rpm
#tar zxvf apache-tomcat-7.0.23.tar.gz
#mv apache-tomcat-7.0.23 /home/kunshiweb/base/apache-tomcat
#chmod 777 jrockit-jdk1.6.0_45-R28.2.7-4.1.0-linux-x64.bin
#./jrockit-jdk1.6.0_45-R28.2.7-4.1.0-linux-x64.bin

press Enter until finish

#cp -r /root/jrockit-jdk1.6.0_45-R28.2.7-4.1.0 /home/kunshi/base/jdk_default
#cp -r /root/jrockit-jdk1.6.0_45-R28.2.7-4.1.0 /home/kunshiweb/base/jdk_default

#rpm -ivh vos3000-2.1.4-0.i586.rpm
press Y and Enter Enter until finish

#rpm -ivh emp-2.1.4-0.noarch.rpm

#rpm -ivh callservice-2.1.4-0.i586.rpm
#rpm -ivh mgc-2.1.4-0.i586.rpm
#rpm -ivh vos3000-web*.rpm
#rpm -ivh mbx3000-2.1.4-0.i586.rpm
#rpm -ivh ivr_dial-2.1.4-0.i586.rpm

#mkdir /home/kunshi/license

upload license file

#chmod 777 /home/kunshi/license/license.dat

#service vos3000d restart
#service vos3000d restart
#service mbx3000d restart
#service mbx3000d restart
#service vos3000webct restart
#service ivrdiald restart
#service phoneserviced restart

reboot the server
