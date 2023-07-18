# Downloads script and executes it
# based on https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html
#
# file disappeared from Github, but a note here: https://docs.ansible.com/ansible/latest/dev_guide/testing/sanity/configure-remoting-ps1.html

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
Invoke-WebRequest https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1 -Outfile c:\Windows\Temp\ConfigureRemotingForAnsible.ps1
c:\Windows\Temp\ConfigureRemotingForAnsible.ps1
Set-ExecutionPolicy -ExecutionPolicy Remotesigned -Force
