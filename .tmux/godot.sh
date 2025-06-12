#!/bin/sh
export MYTMUXPRESET="~/.tmux/godot.sh"
tmux new-session -s "Godot" \; \
  neww -n "Godot" -c ~/Godot/ \; \
  neww -n "Editor" -c ~/Godot/ \; \
    select-layout even-horizontal \; \
  select-window -t 0 \;
