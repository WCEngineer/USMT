$LocalUserName = "$env:COMPUTERNAME\generalmanager"
$DomainUserName = "WHC\wcmanager"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
