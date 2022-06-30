$LocalUserName = "$env:COMPUTERNAME\engineer"
$DomainUserName = "WHC\wcengineer"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
