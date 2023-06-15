# https://learn.microsoft.com/en-us/powershell/module/netadapter/get-netadapter?view=windowsserver2019-ps
Get-NetAdapter -Name * -IncludeHidden
# Get all physical adapters
Get-NetAdapter -Name * -Physical

# choose the adapter to rename from the list
# https://learn.microsoft.com/en-us/powershell/module/netadapter/rename-netadapter?view=windowsserver2019-ps
Rename-NetAdapter -Name "Ethernet" -NewName "ManagementAdapter"
