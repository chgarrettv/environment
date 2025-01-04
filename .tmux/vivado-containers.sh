#!/bin/sh
export MYTMUXPRESET="~/.tmux/vivado-containers.sh"
tmux new-session -s "vivado-containers" \; \
  neww -n "Repository" -c ~/Repositories/vivado-containers \; \
  neww -n "Editor" -c ~/Repositories/vivado-containers \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
