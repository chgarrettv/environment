#!/bin/sh
export MYTMUXPRESET="~/.tmux/spi-lib.sh"
tmux new-session -s "spi-lib" \; \
  neww -n "Repository" -c ~/Repositories/spi-lib \; \
  neww -n "Editor" -c ~/Repositories/spi-lib \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
