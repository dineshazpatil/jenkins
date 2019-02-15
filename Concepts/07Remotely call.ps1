install-module -name jenkins  

$jenkinsurl = "http://localhost:8080"

$jobname = "RemoteTriggered"

$jobToken = "mypasswordtoken"

$Auth = "dinesh:1122b71193c4655ce74dc5525ab5f4cac4"

$Apipass = "1122b71193c4655ce74dc5525ab5f4cac4" | ConvertTo-SecureString -AsPlainText -Force

$apiuser = "dinesh"

$apicred = new-object System.Management.Automation.PSCredential -ArgumentList $apiuser,$Apipass



Test-JenkinsJob -Uri $jenkinsurl -Credential $apicred -Name $jobname


Invoke-JenkinsJob -name $jobname -Uri $jenkinsurl -Credential $apicred -Parameters @{myname="Dinesh"}
