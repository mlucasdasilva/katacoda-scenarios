#!/bin/bash
if [[ $(hostname) != "host01" ]]; then
  exit
fi
sleep 5
echo "done" | sudo tee /root/katacoda-start-finished
echo "Everything ready..."
sleep 1
echo
echo "This is automatically run when the scenario starts"
echo
echo "Clearing docker images before start lab"
docker rmi -f $(docker image ls -q) > /dev/null 2> /dev/null
echo
echo "Initial Setup OK"
echo
sleep 5
clear
echo "done" | sudo tee /root/katacoda-initial-setup-finished
