#!/bin/bash

# starts a tmux
tmux new-session -d -n demonsaw-router
# runs the router
tmux send-keys -t demonsaw-router "cd /home/pi/router" ENTER "./demonsaw_router" ENTER