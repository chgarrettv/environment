#!/bin/sh
export MYTMUXPRESET="~/.tmux/ece230l.sh"
tmux new-session -s "ECE230L" \; \
  neww -n "Repository" -c ~/Repositories/ece230l \; \
  neww -n "Editor" -c ~/Repositories/ece230l \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
