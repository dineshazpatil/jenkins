Param($password,$user,$servername)

$pass = $password| convertto-securestring -Asplaintext -force

$cred = new-object System.Management.Automation.PSCredential -ArgumentList $user,$pass

$PSSessionOption = New-PSSessionOption -SkipCACheck 

$PSSession = New-PSSession -SessionOption $PSSessionOption -Credential $cred `
-ComputerName $servername -Port 5986 -UseSSL


Invoke-Command -Session $PSSession -ScriptBlock {restart-service -name W32Time; Write-Host "Restarted service"}


exit $LastExitCode
