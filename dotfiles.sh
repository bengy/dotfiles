#!/bin/bash
SESSION=dotfiles

# Start daemon with name SESSION with forces 256 bit color mode.
tmux -2 new-session -d -s $SESSION

tmux rename-window 'change'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "nvim ." C-m
tmux select-pane -t 1
tmux resize-pane -R 52
tmux send-keys "git status" C-m
tmux select-pane -t 0

tmux -2 attach-session -t $SESSION;
