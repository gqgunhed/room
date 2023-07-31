# Ansible Quick Start for Windows

## Windows Client Enable WinRM

 * https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html
 * https://docs.ansible.com/ansible/latest/os_guide/windows_winrm.html

### HTTP (Easy)
```
winrm quickconfig
```
And the inventory on the server should look like [this](#httpinventory).

### HTTPS (needs script, not nice!)
Downloads the PowerShell script from here and stores it in C:\Windows\Temp, then executes it. I had to store this script here, as it disappeared from Ansible dev :(

*NEVER* trust some PowerShell script from the internet!
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
Invoke-WebRequest https://raw.githubusercontent.com/gqgunhed/room/main/ansible/ConfigureRemotingForAnsible.ps1 -Outfile c:\Windows\Temp\ConfigureRemotingForAnsible.ps1
c:\Windows\Temp\ConfigureRemotingForAnsible.ps1
Set-ExecutionPolicy -ExecutionPolicy Remotesigned -Force
```

### Check the Listener
```
winrm enumerate winrm/config/Listener
```
To get an output of the current service configuration options, run the following command:
```
winrm get winrm/config/Service
winrm get winrm/config/Winrs
```

## Ansible Host Setup
[Install Ansible](https://docs.ansible.com/ansible/latest/installation_guide/index.html). If you choose to go with cygwin, see [Ansible on Windows with Cygwin](SetupAnsibleWindowsHost.md).
```
pip install pywinrm
pip install cryptography
```

### HTTP Inventory
See https://docs.ansible.com/ansible/latest/os_guide/windows_winrm.html for more details.

inventory.ini
```
[win]
<IP>

[win:vars]
ansible_user=<username>
ansible_password=<password>
ansible_connection=winrm       # always mandatory for Windows
ansible_winrm_transport=ntlm   # to authenticate as local user, use "kerberos" for domain environment
ansible_winrm_port=5985        # port is necessary
```

### HTTPS Inventory
See https://docs.ansible.com/ansible/latest/os_guide/windows_winrm.html for more details.

inventory.ini
```
[win]
<IP>

[win:vars]
ansible_user=<username>
ansible_password=<password>
ansible_connection=winrm       # always mandatory for Windows
ansible_winrm_scheme=https     # no certificate needed
ansible_winrm_transport=ntlm   # to authenticate as local user
ansible_winrm_port=5986        # port is optional
ansible_winrm_server_cert_validation=ignore
```

# Final test
On the Ansible host now test if the Windows clients are reachable. We use a simple [ad hoc command](https://docs.ansible.com/ansible/latest/command_guide/intro_adhoc.html) for this.
```
ansible win -i inventory.ini -m win_ping -vvvv

# win = the inventory "win" group we used in the file
# inventory.ini = the inventory to use
# -m win_ping = we have to use the WIN_ping module, not the regular (Linux) ping module!
# -vvvv = be super verbose, just for debugging ;)
```
If all works it's time to switch over to "[Getting started with Ansible](https://docs.ansible.com/ansible/latest/getting_started/index.html)" (official documentation).
