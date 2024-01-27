#--- Author : Ali Hojaji ---#

#--*------------------------------*--#
#---> Manage Windows Server Core <---#
#--*------------------------------*--#

#Create User in ADDS
New-ADUser -Name "username" -GivenName "user firstname" -Surname "user lastname" -DisplayName "user displayname" -SamAccountName "username" -UserPrincipalName "username@domain.com" -AccountPassword (ConvertTo-SecureString "password" -AsPlainText -Force) -Enabled $true

#Create local User
New-LocalUser -Name "username" -Description "user description" -FullName "user full name" -Password (ConvertTo-SecureString "password" -AsPlainText -Force)
