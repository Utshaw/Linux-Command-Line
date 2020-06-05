#!/bin/bash
cut -d ':' -f 3 /etc/passwd | sort  # doesn't  work sorts alphabetically by default
cut -d ':' -f 3 /etc/passwd | sort -n # n options: sort numerically
sudo du /var # disk usage in kilobytes inside var dir
sudo du -h /var | sort -h # du h = option show size in  human readable way, sort h option sort on human readable data
cat /etc/passwd | sort -t ':' -k 3 -n #sort-> delimited by : get the 3rd field & do numeric sort based on that key
grep Failed syslog-sample  | awk -F ' ' '{print $(NF-3)}' | sort | uniq -c | sort -rn 