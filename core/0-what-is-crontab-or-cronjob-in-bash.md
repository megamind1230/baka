```bash
crontab -e # edit the cron file 
	# or select an editor if 1st time
crontab -l # list the cron file

# the general one
# mins hours days months weekdays cmd
* * * * * cmd
	# mins 0-59
	# hours 0-23
	# days 1-31
	# months 1-12
	# weekdays 0-6

tail -f /var/long/syslog # what crons u have

# @hourly , @monthly , @daily , @weekly , @reboot


```


- install `cronie` on archlinux
- `crontab -e` > edit the periodic file
	- another file for root `sudo crontab -e`
- syntax
	- `min hour dayOfMonth month dayOfWeek cmd`
		- 0 > sunday
		- hour > 24 format
		- `*/15 * * * 1-5 cmd` > repeat every 15min {from mon-fri}
		- `5 */2 * * * /usr/bin/updatedb` > update database for `locate` cmd {5min after every 2h}
