#!/bin/sh
export MYTMUXPRESET="~/.tmux/bisc.sh"
tmux new-session -s "BISC" \; \
  neww -n "Repository" -c ~/Repositories/BISC \; \
  neww -n "Editor" -c ~/Repositories/BISC \; \
  select-window -t 0 \;
