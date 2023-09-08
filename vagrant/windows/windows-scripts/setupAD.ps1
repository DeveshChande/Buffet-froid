Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
Install-WindowsFeature RSAT-AD-PowerShell

Import-Module ADDSDeployment
$PasswordString = "Unscrewkoalacollate#45"
$SecurePasswordString = ConvertTo-SecureString $PasswordString -AsPlainText -Force

$Params = @{
    CreateDnsDelegation = $false
    DatabasePath = 'C:\Windows\NTDS'
    DomainMode = 'WinThreshold'
    DomainName = 'laboratory.com'
    DomainNetbiosName = 'LABORATORY'
    ForestMode = 'WinThreshold'
    InstallDns = $true
    LogPath = 'C:\Windows\NTDS'
    NoRebootOnCompletion = $true
    SafeModeAdministratorPassword = $SecurePasswordString
    SysvolPath = 'C:\Windows\SYSVOL'
    Force = $true
    }
    
Install-ADDSForest @Params
Restart-Computer
