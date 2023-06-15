# active windows update service
Set-Service -Name wuauserv -StartupType Automatic
Set-Service -Name UsoSvc -StartupType Automatic

# Install all windows updates
UsoClient.exe StartScan
UsoClient.exe StartInstall
