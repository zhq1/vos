SQL连接密码
localhost
root
pa5sw0rd
nbx
#backup
rm -rf /usr/sbin/nbxserv
#把phpmyadmin.php上传到/NBX/www
#清空 cfg_lic 表


#升级
./force.sh && ./localinstall.sh && ./update.sh && ./onlyweb.sh
#升级后的密码
shenz520







NBX   E呼安装
demo      101.201.252.189:8080   	  hkkj2016




fdisk -l
fdisk -S 56 /dev/xvdb
根据提示，依次输入“n”，“p”“1”，两次回车，“wq”，分区就开始了，很快就会完成。
fdisk -l
mkswap /dev/xvdb1
mkfs.ext4 /dev/xvdb2
echo "/dev/xvdb1               swap                   swap    defaults        0 0" >> /etc/fstab
echo "/dev/xvdb2               /NBX                   ext4    defaults        0 2" >> /etc/fstab
mkdir /NBX
swapon /dev/xvdb1
mount /dev/xvdb2 /NBX








密码恢复
mysql -u root -ppa5sw0rd
use nbx;
select * from account;
#备份数据
mysqldump -u root -ppa5sw0rd --all-databases > nbx_all.sql

web密码pa5sw0rd
mkdir /NBX
mv n2kpkg.tar.gz /NBX/
cd /NBX/
tar -zxvf n2kpkg.tar.gz
sync
cd /NBX/n2kpkg
./inst.sh
cat <<EOF>> /etc/rc.d/rc.local
ifconfig eth0 down
ifconfig eth0 hw ether 00:16:3E:00:05:3C
ifconfig eth0 up
/etc/init.d/nbxserv restart
EOF
#配置文件
cat /etc/rc.d/rc.local
#!/bin/sh
#
# This script will be executed *after* all the other init scripts.
# You can put your own initialization stuff in here if you don't
# want to do the full Sys V style init stuff.

touch /var/lock/subsys/local
mkdir /dev/shm/phpsession
chown nbx:nbx /dev/shm/phpsession
chmod 777 /dev/shm/phpsession

mkdir /dev/shm/recording
chown nbx:nbx /dev/shm/recording
chmod 777 /dev/shm/recording

ifconfig eth0 down
ifconfig eth0 hw ether 00:16:3E:00:05:3C
ifconfig eth0 up
/etc/init.d/nbxserv restart
#key
00:16:3E:00:05:3C
CE9DB9BF9F8F7DD89CDD9B2263C5557B
782E8E3B9CC6850A65D9E015182E35D5
31ABCC5340EF8BB2C48756D4117959E5
2CE8D387A1425D31B5A014432039825C
C10B7A12531542A25615EBBDFA72F13D
E35959ECF4205EA4084B80D0F7A21F58
A93D09EE285FE390527704F863D90464

00:16:3E:10:09:9D
357498C4AFC8D85675565F5A66722E9E
3D696DE23558FEE826D007FD92CE7DA7
47898C4B91AC1A26CF429B365A0ECDB8
5CA05A4D11848825E2EEF5FB439D892E
4E5CF1BD53F1514AAE2C92FAFF56BE78
AA0851B2447D2918E65FA53D9B61029B
05AA085ECE145E11950AD8DF6CC5B637


00:16:3E:06:6C:70
E1C1820ED53DB3ECE46F96D65F337C57
530EE181B3496F28AF67E95E62F7B8E4
35BC287CAC5656A05BC03CA892F5F300
AD83786A60E87A0CCACBCD83DB756BFF
DF831C8696E9723EA115CC120DB8B0EA
9946198F29EFA11E339EE60771CC0F80
D999E01CEB823D360FC178003596E336


centos6.8_version_VERSION:2.3.12 BUILDTIME:2016-01-13 19:26:32
00:16:3E:0D:CD:7C
1DF7B6C797CE303D30B2A7FB7C8500CC
9350DB73DEDB4AE58BD30CEED41A3A18
025A61F13ABE9C0A6BB26BD05FB5F687
E1DEEED3100FEF224C104D0FAC391EE4
03B627CE55932BC4EF7FED7FC86B1C4F
DB70BBCFABA14D91AFA23E1C181B9D86
9EC92AC744AA13C44C6FB8F59D357164