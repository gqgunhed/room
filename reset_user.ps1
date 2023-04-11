# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/remove-localuser?view=powershell-5.1

function RemoveUser {
  Write-Output "Removing local user: $Username"
  Remove-LocalUser -Name $Username
}

function CreateUser {
  Write-Output "Enter password for the new user $Username: "
  $Password = Read-Host -AsSecureString
  
  Write-Output "Creating new local user account."
  New-LocalUser $Username -Password $Password -FullName $Username -Description "student user"
}

# main routine
$Username = "Student"

RemoveUser
CreateUser
