# Windows Remote Management
  - https://learn.microsoft.com/de-de/troubleshoot/windows-server/remote/how-to-enable-windows-remote-shell
  - https://learn.microsoft.com/de-de/powershell/scripting/learn/remoting/winrmsecurity?view=powershell-7.3
  - https://learn.microsoft.com/de-de/windows/win32/winrm/installation-and-configuration-for-windows-remote-management
  - https://techexpert.tips/de/powershell-de/powershell-remote-befehle-mit-winrm/
  - https://4sysops.com/archives/enabling-powershell-remoting-fails-due-to-public-network-connection-type/
 
 ```
 # active WinRM on CLIENT
# must skip network check for ppublic network connections
Enable-PSRemoting -SkipNetworkProfileCheck -Force
```

```
# Allow Admin Access to client PCs on ADMIN-Workstation
# change "*" to desired IP-Range
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "*" -Force

# check values
Get-Item WSMan:\localhost\Client\TrustedHosts
```


