#!/bin/sh

CRON=/etc/cron.d/
ID="-i /tmp/root/.ssh/ssh_host_rsa_key"
SERVER="user@server"

scp $ID $SERVER:"~/bw-monitor/wrtbwmon ~/bw-monitor/usage.db ~/bw-monitor/bwmoncron" /tmp/root
chmod +x /tmp/root/wrtbwmon

mv /tmp/root/wrtbwmon /tmp
mv /tmp/root/usage.db /tmp

/tmp/wrtbwmon setup
/tmp/wrtbwmon publish /tmp/usage.db /www/user/usage.htm

mv /tmp/root/bwmoncron $CRON
killall cron && cron

touch /tmp/root/bwmon-installed
rm basename "$0"

exit 0
