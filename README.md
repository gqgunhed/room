# Installation

see https://chocolatey.org/install

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

# Packages
```
choco install -y firefox google-chrome-x64 notepadplusplus adobereader putty zoom skype vmware-horizon-client teamviewer.host choco-upgrade-all-at-startup
```

# User Account

## Remove
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser?view=powershell-5.1

## Add
https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1
