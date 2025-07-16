#1

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