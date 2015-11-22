#!/bin/bash

# updates start and ds this may be moved to update.sh later
sudo wget https://github.com/shadowflee/update/archive/master.zip -O /home/pi/update/master.zip
sudo unzip -o -d /home/pi/update /home/pi/update/master.zip
sudo mv /home/pi/update/update-master/update/demonsaw_router /home/pi/router/demonsaw_router
sudo mv /home/pi/update/update-master/stuff/start.sh /home/pi/start.sh
sudo chmod 751 /home/pi/router/demonsaw_router
sleep 5
# starts a tmux
sudo -H -u pi bash -c 'tmux new-session -d -n demonsaw-router && tmux send-keys -t demonsaw-router "cd /home/pi/router" ENTER "./demonsaw_router" ENTER '

