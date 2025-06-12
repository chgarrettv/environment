#!/bin/sh
export MYTMUXPRESET="~/.tmux/axi-lib.sh"
tmux new-session -s "axi-lib" \; \
  neww -n "Repository" -c ~/Repositories/axi-lib \; \
  neww -n "Editor" -c ~/Repositories/axi-lib \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
