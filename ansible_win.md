# Setting up Windows host

  * Official Guide
    * https://www.ansible.com/blog/connecting-to-a-windows-host
    * https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1
  * Youtube Tutorial
    * https://www.youtube.com/watch?v=aPN18jLRkJI - Learn How to Use Ansible to Manage Windows Servers (winrm) - Step by Step Guide
    * https://gist.github.com/dmccuk/c39f560feec55fdbbaf5a17c3c52a431#file-ansible_manage_windows_servers_using_winrm-md

# Setting up Ansible host for WinRM
Install mandatory module: `pip install pywinrm`

## Example hosts.ini file
```
[win]
192.168.1.1
192.168.1.2

[win:vars]
ansible_user=remoteadminuser
ansible_password=supersecretpassword
ansible_connection=winrm
ansible_winrm_server_cert_validation=ignore
# ansible_winrm_scheme=https
# ansible_winrm_kerberos_delegation=true
```

# Create Ansbile playbooks on the host

## Example windows.yml file
from https://gist.github.com/dmccuk/c39f560feec55fdbbaf5a17c3c52a431#file-ansible_manage_windows_servers_using_winrm-md
```
---
- name: Manage Windows
  hosts: win
  tasks:
  - name: Create directory structure
    win_file:
      path: C:\Temp\folder
      state: directory

  - name: Touch a file
    win_file:
      path: C:\Temp\folder\foo.txt
      state: touch

  - name: Create a file from a Jinja2 template
    win_template:
      src: foo.txt.j2
      dest: C:\temp\folder\foo.txt

  - win_stat:
      path: C:\temp\folder\foo.txt
      get_checksum: yes
      checksum_algorithm: md5
    register: md5_checksum

  - debug:
      var: md5_checksum.stat.checksum
```

# Other References

## Ansible for WinRM
  - https://docs.ansible.com/ansible/latest/os_guide/windows_winrm.html
  - https://www.ansible.com/for/windows
  - https://docs.ansible.com/ansible/latest/os_guide/index.html#windows
  - https://docs.ansible.com/ansible/latest/os_guide/windows_usage.html
  - https://docs.ansible.com/ansible/latest/getting_started/index.html
  - https://docs.ansible.com/ansible/latest/collections/ansible/windows/index.html
  - https://www.ansible.com/blog/connecting-to-a-windows-host

## Ansible for Windows
  - https://geekflare.com/ansible-installation-windows/ - Installation via cygwin
