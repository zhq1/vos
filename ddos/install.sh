#!/bin/sh
rm -rf /usr/local/sbin/ddos
rm -rf /usr/local/ddos
rm -rf /etc/cron.d/ddos.cron
mkdir /usr/local/ddos
\cp -r ddos.conf /usr/local/ddos/ddos.conf
echo -n '.'
\cp -r LICENSE /usr/local/ddos/LICENSE
echo -n '.'
\cp -r ignore.ip.list /usr/local/ddos/ignore.ip.list
echo -n '.'
\cp -r ddos.sh /usr/local/ddos/ddos.sh
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'

echo; echo -n 'Creating cron to run script every minute.....(Default setting)'
/usr/local/ddos/ddos.sh --cron > /dev/null 2>&1
echo '.....done'
echo; echo 'Installation has completed.'