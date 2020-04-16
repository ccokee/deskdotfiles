#!/bin/bash

while [ $(nc -vz google.com 443; echo $?) != "0" ];
do 
clear
echo "Waiting for connection"
sleep 0.5
clear
echo "Waiting for connection ."
sleep 0.5
clear
echo "Waiting for connection .."
sleep 0.5
clear
echo "Waitihg for connection ..."
done

case $1 in
1)
weechat
;;
2)
sleep 1 && ssh coke@192.168.1.4 ## cKtv
;;
3)
sleep 1 && ssh root@192.168.1.10 ## cKsas
;;
4)
sleep 1 && ssh dietpi@192.168.1.56 ## cKbodega
;;
5)
sleep 1 && ssh root@192.168.1.17 -p 2222 ##cKsas
;;
6)
sleep 1 && ssh root@192.168.1.23 #cKyaya
;;
7)
ssh -p 22
;;
8)
baresip -d -f ~/git/baresip/
;;
9)
sudo iptraf-ng -i enp5s0
;;
10)
sudo nettop -i enp5s0
;;
esac

exit 0

