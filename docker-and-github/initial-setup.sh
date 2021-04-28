
sleep 10
echo
echo "This is automatically run when the scenario starts"
echo
echo "Clear docker images before start lab"
docker rmi -f $(docker image ls -q) > /dev/null
echo
echo "Initial Setup OK"
echo
