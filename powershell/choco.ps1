# Install choco
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install software packages
choco install -y firefox google-chrome-x64 notepadplusplus adobereader putty zoom skype vmware-horizon-client teamviewer.host choco-upgrade-all-at-startup
