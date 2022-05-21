sudo apt install macchanger -y
#!/bin/bash
macchanger -l > maclists.txt
ouimac=$(shuf -n 1 maclists.txt | awk '{print$3}')
uaamac=$(printf '%02x:%02x:%02x' $[RAMDOM%256] $[RANDOM%256] $[RANDOM%256])
macchanger -m "$ouimac:$uaamac"  eth0 wlan0
