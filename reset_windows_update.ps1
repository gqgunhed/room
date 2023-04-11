# Bugfix for 0x80242006

# stop services
net stop wuauserv
net stop bits
net stop cryptsvc
net stop lanmanworkstation

# remove all files form windows update cache
rd / s/q c:\Windows\SoftwareDistribution

# start services
net net start lanmanworkstation
net start cryptsvc
net start bits
net start wuauserv
