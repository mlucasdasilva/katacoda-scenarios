

echo "This is automatically run when the scenario stats"

echo "Remove all docker images"
docker rmi -f $(docker image ls -q)

