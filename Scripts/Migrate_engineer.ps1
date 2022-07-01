$LocalUserName = "$env:COMPUTERNAME\engineer"
$DomainUserName = "WHC\wcengineer"

. (Join-Path "$PSScriptRoot" 'ScanState_Win7.ps1') "$LocalUserName"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
