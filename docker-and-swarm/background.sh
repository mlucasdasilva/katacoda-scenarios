#!/bin/bash
sleep 5
echo "done" | sudo tee /root/katacoda-finished
echo "Everything ready..."
if [ -f /usr/local/bin/deploy.sh ] ; then
  echo "Finalise the deployment..."
  /usr/local/bin/deploy.sh
else
  echo "No deployment..."
fi
echo "done" | sudo tee /root/katacoda-background-finished

