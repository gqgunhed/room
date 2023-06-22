# Powershell Scripts
In diesem Ordner befinden sich einige Powershell Scripts für Aufgaben in Windows 10.

## Set user password
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/set-localuser?view=powershell-5.1
```
$Password = Read-Host -AsSecureString
$UserAccount = Get-LocalUser -Name "NewUser"
$UserAccount | Set-LocalUser -Password $Password
```
