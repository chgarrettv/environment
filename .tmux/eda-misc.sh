#!/bin/sh
export MYTMUXPRESET="~/.tmux/eda-misc.sh"
tmux new-session -s "eda-misc" \; \
  neww -n "Repository" -c ~/Repositories/eda-misc \; \
  neww -n "Editor" -c ~/Repositories/eda-misc \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
