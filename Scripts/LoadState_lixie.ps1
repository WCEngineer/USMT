$LocalUserName = "$env:COMPUTERNAME\lixie"
$DomainUserName = "WHC\lixieship"

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$LocalUserName"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
