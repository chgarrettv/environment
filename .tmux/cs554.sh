#!/bin/sh
export MYTMUXPRESET="~/.tmux/cs554.sh"
tmux new-session -s "CS554" \; \
  neww -n "Repository" -c ~/Repositories/cs554 \; \
  neww -n "Editor" -c ~/Repositories/cs554 \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
