#!/bin/sh
export MYTMUXPRESET="~/.tmux/ece530.sh"
tmux new-session -s "ECE530" \; \
  neww -n "Repository" -c ~/Repositories/ece530 \; \
  neww -n "Editor" -c ~/Repositories/ece530 \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
