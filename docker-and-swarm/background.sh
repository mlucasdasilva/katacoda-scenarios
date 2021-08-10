#!/bin/bash
sudo grep -i "done" /opt/katacoda-background-finished &> /dev/null
if [[ "$?" -eq 0 ]]; then
exit
fi
while true; do sudo grep -i "done" /opt/katacoda-finished > /dev/null && break || sleep 2; done
echo "Everything ready..."

if [ ! -f /usr/local/bin/wait.sh ] ; then
  echo "Finalise the deployment..."
  /usr/local/bin/deploy.sh
else
  echo "No deployment..."
fi
echo "done" | sudo tee /root/katacoda-background-finished