# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser?view=powershell-5.1
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1

function RemoveUser {
  Write-Output "Removing local user: $Username"
  Remove-LocalUser -Name $Username
}

function CreateUser {
  Write-Output "Creating new local user account."
  New-LocalUser $Username -Password $Password -FullName $Username -Description "student user" -AccountNeverExpires:$true -PasswordNeverExpires:$true -UserMayNotChangePassword:$true 
}

# main routine
$Username = "Student"
Write-Output "Enter password for the new user $Username: "
$Password = Read-Host -AsSecureString
  
RemoveUser
CreateUser
