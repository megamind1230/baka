#1
```
# stay safe for windows.. written in the hosts file
# C:\Windows\System32\drivers\etc
127.0.0.1       www.xnxx.com
127.0.0.1       www.pornhub.com
127.0.0.1       www.xvidoes.com
127.0.0.1       www.xvidoes2.com
127.0.0.1       www.xvidoes3.com
127.0.0.1       www.xhamster.com
127.0.0.1       www.ixxx.com
127.0.0.1       www.spankbang.com
127.0.0.1       www.sexvid.xxx
127.0.0.1       www.taxi69.com
```
but for linux
```
sudo iptables -A OUTPUT -d xnxx.com -j DROP
sudo iptables -A OUTPUT -d pornhub.com -j DROP
sudo iptables -A OUTPUT -d xvidoes.com -j DROP
sudo iptables -A OUTPUT -d xvidoes2.com -j DROP
sudo iptables -A OUTPUT -d xvidoes3.com -j DROP
sudo iptables -A OUTPUT -d ixxx.com -j DROP
sudo iptables -A OUTPUT -d spankbang.com -j DROP
sudo iptables -A OUTPUT -d sexvid.com -j DROP
sudo iptables -A OUTPUT -d taxi69.com -j DROP
sudo /sbin/iptables-save
```
