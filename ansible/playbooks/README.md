# List of Ansible Windows modules
https://docs.ansible.com/ansible/2.9/modules/list_of_windows_modules.html#windows-modules

## Examples of Windows settings like desktop, wallpaper, icons, etc.
https://github.com/crombeen/ansible/blob/master/desktop.yml

## Running Ansible playbooks against a single/few host(s)
https://stackoverflow.com/questions/35332188/running-an-ansible-playbook-against-a-single-host
Well I finished writing this question, then my SO search-fu improved. Here are some answers:

### Using -l (--limit) SUBSET:
Limiting the host group from within the playbook to a specific host within that group.

https://stackoverflow.com/questions/22129422/running-an-ansible-playbook-on-a-particular-group-of-servers

### Using -i (--inventory) "hostname,"
Basically creating a temporary inventory on the command line.
Be especially aware of the trailing "," following the hostname/IP address.

https://stackoverflow.com/questions/34883525/how-do-i-narrow-down-scope-when-running-an-ansible-playbook
