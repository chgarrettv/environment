#!/bin/sh
export MYTMUXPRESET="~/.tmux/bhdl.sh"
tmux new-session -s "BHDL" \; \
  neww -n "Repository" -c ~/Repositories/BHDL \; \
  neww -n "Editor" -c ~/Repositories/BHDL \; \
  select-window -t 0 \;
