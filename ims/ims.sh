#查询ims域名的ip
nslookup ims.sn.chinamobile.com|grep Address|grep -v "#"|awk '{print $2}'
140.143.237.96
echo 140.143.237.96 ims.sn.chinamobile.com
#增加路由
route add -net 10.38.8.0 netmask 255.255.248.0 gw 10.38.8.1
route add -net 192.168.1.0/24 gw 192.168.3.1 metric 100

#dns
cat /etc/resolv.conf
options timeout:1 attempts:1 rotate
nameserver 10.202.72.116
nameserver 10.202.72.118