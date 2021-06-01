function CheckInstall-Containers
{

if ((Get-WindowsFeature -Name Containers).InstallState -eq "Installed"){
Write-Host "Containers feature is installed."
}
else{
Install-WindowsFeature -Name Containers
Write-Host "Containers feature is being installed"
}

}

function CheckInstall-WebServer
{

if ((Get-WindowsFeature -Name Web-Server).InstallState -eq "Installed"){
Write-Host "Web-Server feature is installed."
}
else{
Install-WindowsFeature -name Web-Server -IncludeManagementTools
Write-Host "Web-Server feature is being installed"
}

}

Install-Module -Name Az
Install-Module -Name CredentialSpec
Install-Module -Name PSSlack -RequiredVersion 0.1.0
Install-Module -Name DockerMsftProvider

CheckInstall-Containers
CheckInstall-WebServer
Add-MpPreference -ExclusionPath Z:\
Add-MpPreference -ExclusionProcess "%ProgramData%\docker\dockerd.exe"