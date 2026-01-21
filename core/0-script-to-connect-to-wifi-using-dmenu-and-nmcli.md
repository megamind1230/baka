- [x] `nmcli c` or `nmcli d` network manager cli
	- what type of internet your device have + gives your wifi router name

> nmcli = network manager cli
```bash
bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "Select wifi :" -l 20 | cut -d' ' -f1)
pass=$(echo "" | dmenu -p "Enter password :")
nmcli device wifi connect $bssid password $pass
```
