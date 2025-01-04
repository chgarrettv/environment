#!/bin/sh
export MYTMUXPRESET="~/.tmux/octev.sh"
tmux new-session -s "octev" \; \
  neww -n "Repository" -c ~/Repositories/octev \; \
  neww -n "Editor" -c ~/Repositories/octev \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
