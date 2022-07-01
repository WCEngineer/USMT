$LocalUserName = "$env:COMPUTERNAME\generalmanager"
$DomainUserName = "WHC\wcmanager"

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$LocalUserName"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
