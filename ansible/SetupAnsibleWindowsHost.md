# Howto prepare a Windows host as Ansible host

## Install cygwin and ansible
see https://cygwin.com/faq.html#faq.setup
```
Invoke-WebRequest https://cygwin.com/setup-x86_64.exe -Outfile c:\Windows\Temp\setup-x86_64.exe
c:\Windows\Temp\setup-x86_64.exe --quiet-mode --upgrade-also --packages ansible
```

## Start cygwin bash and install additional packages
```
pip install pywinrm
pip install cryptography
```
