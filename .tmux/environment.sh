#!/bin/sh
export MYTMUXPRESET="~/.tmux/environment.sh"
tmux new-session -s "environment" \; \
  neww -n "Repository" -c ~/Repositories/environment \; \
  neww -n "Editor" -c ~/Repositories/environment \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
