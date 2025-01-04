#!/bin/sh
export MYTMUXPRESET="~/.tmux/base.sh"
tmux new-session -s "Base" \; \
  neww -n "Repository" -c ~/Repositories/ \; \
  neww -n "Editor" -c ~/Repositories/ \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
