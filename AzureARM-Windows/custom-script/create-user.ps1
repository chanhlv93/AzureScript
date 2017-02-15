# powershell variables
$name = 'chanhlv'
$password = '1234567890a@'

# powershell command
$server=[adsi]"WinNT://$env:computername"
$user=$server.Create("User","$name")
$user.SetPassword($password)
$user.SetInfo()
 
# add extra info
$user.Put('Description','Limited user account')
$flag=$user.UserFlags.Value -bor 0x800000
$user.put('userflags',$flag)
$user.SetInfo()
 
# add user  to mandatory local group
$group=[adsi]"WinNT://$env:computername/Users,Group"
$group.Add($user.path)
# add users to other groups
