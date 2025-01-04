#!/bin/sh
export MYTMUXPRESET="~/.tmux/arena.sh"
tmux new-session -s "arena" \; \
  neww -n "Repository" -c ~/Repositories/Arena.net \; \
  neww -n "Editor" -c ~/Repositories/Arena.net \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
