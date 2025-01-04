#!/bin/sh
export MYTMUXPRESET="~/.tmux/bsurv32.sh"
tmux new-session -s "BSURV32" \; \
  neww -n "Repository" -c ~/Repositories/bsurv32 \; \
  neww -n "Editor" -c ~/Repositories/bsurv32 \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
