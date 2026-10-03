echo
echo "        LOG ANALYSIS"
echo
echo "RECENT LOGS"
journalctl -n 10
echo "ERRORS"
journalctl -p err -n 10
echo
echo "FAILED SERVICES"
systemctl --failed
