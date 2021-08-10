if [[ $(hostname) != "host01" ]]; then
  exit
fi
while [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done; /usr/local/bin/wait.sh
