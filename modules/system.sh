echo
echo "        SYSTEM INFORMATION"
echo

echo "User: $USER"
echo "Hostname: $(hostname)"
echo "Kernel: $(uname -r)"
echo "Operating System: $(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Uptime: $(uptime -p)"
echo "IP Address: $(hostname -I)"
