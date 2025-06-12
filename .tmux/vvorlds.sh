#!/bin/sh
export MYTMUXPRESET="~/.tmux/vvorlds.sh"
tmux new-session -s "vvorlds" \; \
  neww -n "Repository" -c ~/Repositories/vvorlds \; \
  neww -n "Editor" -c ~/Repositories/vvorlds \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
