#!/bin/bash

#Session Name
session="Work"

# Start New Session with our name
tmux new-session -d -s $session

tmux new-window -t $session:1 -n 'Terminal'

# Name first Window
tmux rename-window -t 0 'Main'

# Configure 1st window
tmux select-window -t 0 
tmux send-keys 'cd Documents/rootp/python\ /typingtest; nvim main.py' C-m
tmux split-window -h
tmux send-keys 'cd Documents/rootp/python\ /typingtest; clear' C-m
tmux split-window -v

tmux attach -t $session
