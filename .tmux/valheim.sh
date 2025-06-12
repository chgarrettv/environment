#!/bin/sh
export MYTMUXPRESET="~/.tmux/valheim.sh"
tmux new-session -s "valheim" \; \
  neww -n "Server" -c ~/Servers/valheim \;
