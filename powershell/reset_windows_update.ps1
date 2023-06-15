# Bugfix for 0x80242006

# stop services
net stop wuauserv
net stop bits
net stop cryptsvc
net stop lanmanworkstation

# remove all files form windows update cache
Remove-Item -Recurse -Force c:\Windows\SoftwareDistribution

# start services
net start lanmanworkstation
net start cryptsvc
net start bits
net start wuauserv
