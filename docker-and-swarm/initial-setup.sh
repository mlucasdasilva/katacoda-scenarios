
sleep 1
echo
echo "This is automatically run when the scenario starts"
echo
# echo "Clearing docker images before start lab"
# docker rmi -f $(docker image ls -q) > /dev/null 2> /dev/null
hostname master
PS1="$(hostname) $"
echo
echo "Initial Setup OK"
echo
sleep 5
clear
