#!/bin/sh
export MYTMUXPRESET="~/.tmux/aes.sh"
tmux new-session -s "Base" \; \
  neww -n "Repository" -c ~/Repositories/aes \; \
  neww -n "Editor" -c ~/Repositories/aes \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
