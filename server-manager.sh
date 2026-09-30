
#!/bin/bash

echo "        LINUX SERVER MANAGER"
echo

echo "1. System Information"
echo "2. System Resources"
echo "3. Service Monitoring"
echo "4. User Information"
echo "5. Log Analysis"
echo "6. backup"
echo "0. Exit"
echo

read -p "Choose an option: " choice

case $choice in

    1)
        echo
        echo "        SYSTEM INFORMATION"
        echo

        echo "User: $USER"
        echo "Hostname: $(hostname)"
        echo "Kernel: $(uname -r)"
        echo "Uptime: $(uptime -p)"
        echo "IP Address: $(hostname -I)"
        ;;

    2)
        echo
        echo "        SYSTEM RESOURCES"
        echo

        cpu=$(top -bn1 | awk -F',' '/Cpu\(s\)/ {printf "%.1f%%", 100 - $4}')
        ram=$(free | awk '/Mem:/ {printf "%.0f%%", $3/$2 * 100}')
        disk=$(df -h / | awk 'NR==2 {print $5}')

        echo "CPU Usage: $cpu"
        echo "RAM Usage: $ram"
        echo "Disk Usage: $disk"
        ;;
     3)
       echo
       ./monitor.sh
        ;;
     4)
       echo
       echo "        USER INFORMATION"
       echo
       username=$(whoami)
       uid=$(id -u)
       gid=$(id -g)
       home=$HOME

       echo "Current User: $username"
       echo "User ID: $uid"
       echo "Group ID: $gid"
       echo "Home directory: $home"
        ;;
     5)
       echo
       ./logs.sh
       ;;
    6)
       echo
       echo "              BACKUP"
       echo
       ./backup.sh
       ;;
    0)
        echo
        echo "Goodbye!"
        ;;

    *)
        echo
        echo "Invalid option."
        ;;

esac


