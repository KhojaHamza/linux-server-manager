
#!/bin/bash
while true
do
clear
echo "        LINUX SERVER MANAGER"
echo

echo "1. System Information"
echo "2. System Resources"
echo "3. Service Monitoring"
echo "4. Process Monitoring"
echo "5. User Information"
echo "6. Log Analysis"
echo "7. backup"
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
        ./modules/system.sh
        ;;
     3)
       echo
       ./modules/monitor.sh
        ;;
     4)./modules/processes.sh
        ;;
     5)
       ./modules/users.sh
        ;;
     6)
       echo
       ./modules/logs.sh
       ;;
    7)
       echo
       echo "              BACKUP"
       echo
       ./modules/backup.sh
       ;;
    0)
        echo
        echo "Goodbye!"
        exit 0
        ;;

    *)
        echo
        echo "Invalid option."
        ;;

esac


read -p "Press enter to return to the menu..."
done
