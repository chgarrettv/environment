#!/bin/sh
export MYTMUXPRESET="~/.tmux/server.sh"
tmux new-session -s "Server" \; \
  neww -n "Server" -c ~/ \;
