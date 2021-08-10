while [[ $(hostname) == "host01" ]] && [ ! -f /usr/local/bin/wait.sh ]; do sleep 1; done && /usr/local/bin/wait.sh
