#!/bin/bash

tmux -2 new-session -d -s Misc
tmux rename-window -t Misc Audio
tmux new-window -t Misc -n cKterm

# PULSEMIXER  #
tmux send-keys -t Misc:0.0 "pulsemixer" Enter

# cKpane #
tmux select-window -t Misc:2

tmux -2 attach-session -t Misc
