# Windows Remote Management
  - https://learn.microsoft.com/de-de/troubleshoot/windows-server/remote/how-to-enable-windows-remote-shell
  - https://learn.microsoft.com/de-de/powershell/scripting/learn/remoting/winrmsecurity?view=powershell-7.3
  - https://learn.microsoft.com/de-de/windows/win32/winrm/installation-and-configuration-for-windows-remote-management
  - https://techexpert.tips/de/powershell-de/powershell-remote-befehle-mit-winrm/
  - https://4sysops.com/archives/enabling-powershell-remoting-fails-due-to-public-network-connection-type/
 
 ```
# must skip network check for ppublic network connections
Enable-PSRemoting -SkipNetworkProfileCheck -Force

# Remotezugriff von xyz erlauben
# see https://learn.microsoft.com/de-de/windows/win32/winrm/installation-and-configuration-for-windows-remote-management
winrm set winrm/config/client '@{TrustedHosts ="[0:0:0:0:0:0:0:0]"}'
```

# Ansible for WinRM
  - https://docs.ansible.com/ansible/latest/os_guide/windows_winrm.html
  - https://www.ansible.com/for/windows
  - https://docs.ansible.com/ansible/latest/os_guide/index.html#windows
  - https://docs.ansible.com/ansible/latest/os_guide/windows_usage.html
  - https://docs.ansible.com/ansible/latest/getting_started/index.html
  - https://docs.ansible.com/ansible/latest/collections/ansible/windows/index.html

# Ansible for Windows
  - https://geekflare.com/ansible-installation-windows/ - Installation via cygwin

