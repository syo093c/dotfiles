#!/bin/bash -eu

#init-work-space
tmux new-session -d -s main

tmux new-window
tmux new-window
tmux new-window
tmux new-window
tmux select-window -t 5
#tmux split-window -h

#tmux select-pane -t 1
tmux send-keys "xset r rate 250 90" C-m
#tmux send-keys "xrandr --output eDP --scale 1.3333x1.3333" C-m
tmux send-keys "setxkbmap -option 'caps:swapescape'" C-m
#tmux send-keys "xphoon -b" C-m
tmux send-keys "nitrogen --restore" C-m
tmux send-keys "redshift" C-m
#tmux send-keys "ebview &" C-m
tmux send-keys "copyq &" C-m

#tmux select-pane -t 2
#tmux send-keys "qv2ray &" C-m

tmux select-window -t 1
tmux send-keys "btop" C-m
tmux split-window -v
tmux send-keys "nvtop" C-m
tmux select-window -t 2
tmux attach-session -t main
