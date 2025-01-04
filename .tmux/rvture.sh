#!/bin/sh
export MYTMUXPRESET="~/.tmux/rvture.sh"
tmux new-session -s "RVture" \; \
  neww -n "Repository" -c ~/Repositories/rvture \; \
  neww -n "Editor" -c ~/Repositories/rvture \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
