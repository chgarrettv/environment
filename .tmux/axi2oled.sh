#!/bin/sh
export MYTMUXPRESET="~/.tmux/axi2oled.sh"
tmux new-session -s "axi2oled" \; \
  neww -n "Repository" -c ~/Repositories/axi2oled \; \
  neww -n "Editor" -c ~/Repositories/axi2oled \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
