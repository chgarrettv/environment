#!/bin/sh
export MYTMUXPRESET="~/.tmux/bhdl.sh"
tmux new-session -s "bhdl" \; \
  neww -n "Repository" -c ~/Repositories/bhdl \; \
  neww -n "Editor" -c ~/Repositories/bhdl \; \
  select-window -t 0 \;
