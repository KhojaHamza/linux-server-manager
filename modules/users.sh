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

