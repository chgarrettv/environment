#!/bin/sh
export MYTMUXPRESET="~/.tmux/misc-eda.sh"
tmux new-session -s "misc-eda" \; \
  neww -n "Repository" -c ~/Repositories/misc-eda \; \
  neww -n "Editor" -c ~/Repositories/misc-eda \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
