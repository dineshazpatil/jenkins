install-module -name jenkins -Force

$jenkinsurl = "http://localhost:8080"

$jobname = "04-TriggeredBuildsremotely"

Test-JenkinsJob -Uri $jenkinsurl -Credential (Get-Credential) -Name $jobname