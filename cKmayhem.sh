
#!/bin/bash

tmux -2 new-session -d -s Mayhem

tmux rename-window -t Mayhem:0 Localhost
tmux new-window -t Mayhem -n cKmayhem


tmux split-window -t Mayhem:0.0 -h -p 50
tmux split-window -t Mayhem:1.0 -h -p 100
tmux split-window -t Mayhem:1.1 -v -p 50
tmux split-window -t Mayhem:1.1 -h -p 100
tmux split-window -t Mayhem:1.3 -h -p 100
tmux split-window -t Mayhem:1.4 -v -p 100
tmux send-keys -t Mayhem:0.1 "sleep 2 && clear" Enter

tmux select-layout -t Mayhem:1 tiled

tmux send-keys -t Mayhem:1.1 "/home/coke/.xmonad/waitcon.sh 2 && clear && echo disconected" Enter
tmux send-keys -t Mayhem:1.2 "/home/coke/.xmonad/waitcon.sh 3 && clear && echo disconected." Enter
tmux send-keys -t Mayhem:1.3 "/home/coke/.xmonad/waitcon.sh 4 && clear && echo disconnected" Enter
tmux send-keys -t Mayhem:1.4 "/home/coke/.xmonad/waitcon.sh 5 && clear && echo disconnected" Enter
tmux send-keys -t Mayhem:1.5 "/home/coke/.xmonad/waitcon.sh 6 && clear && echo disconnected" Enter

tmux select-window -t Mayhem:0.0
tmux -2 attach-session -t Mayhem
