## Config Datetime

```shell
# Two clocks Real Time Clock (RTC - Hardware Clock) | Software Clock
# Three config tools timedatectl, date, hwclock

timedatectl set-time HH:MM:SS
timedatectl set-time YYYY-MM-DD
timedatectl set-time 2018-06-02 23:26:00

date --set
hwclock --systohc

timedatectl set-local-rtc

timedatectl list-timezones
timedatectl set-timezone time_zone

systemctl restart systemd-timedated.service

# Using Date
date +"%Y %M  %d %H %m %S"
date +"%F %T"

date --set HH:MM:SS
date --set YYYY-MM-DD
date --set "2018-04-27 10:02:43"

# Using RTC Clock
cat /etc/adjtime
hwclock 
hwclock --utc
hwclock --local
hwclock --set --date "dd mm yyyy HH:MM" --utc 

hwclock --systohc
hwclock --hctosys

# NTP
timedatectl set-ntp boolean 
```
