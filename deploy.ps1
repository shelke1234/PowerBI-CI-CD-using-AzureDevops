# update $userName and $password with your user credentials
$userName = "dhananjay@cloudaeon.net"
$password = "LIfe@@787898"

# convert password to secure string
$securePassword = ConvertTo-SecureString -String $password -AsPlainText -Force

# create PSCredential object to serve as login credentials
$credential = New-Object -TypeName System.Management.Automation.PSCredential `
-ArgumentList $userName, $securePassword

# log into Power BI unattended without any user interaction
$user = Connect-PowerBIServiceAccount -Credential $credential
$userName = $user.UserName 
Write-Host
Write-Host "Now logged in as $userName"

# log into Power BI unattended without any user interaction
$user = Connect-PowerBIServiceAccount -Credential $credential
Get-PowerBIWorkspace | Format-Table Name, Id
