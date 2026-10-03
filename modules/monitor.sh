echo
echo "        SERVICE MONITORING"
echo


ssh_status=$(systemctl is-active ssh)
nginx_status=$(systemctl is-active Nginx)

cron_status=$(systemctl is-active cron)

echo "Cron: $cron_status"
echo "ssh: $ssh_status"
echo "Nginx: $nginx_status"

