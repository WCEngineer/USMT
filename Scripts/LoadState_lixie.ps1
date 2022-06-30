$LocalUserName = "$env:COMPUTERNAME\lixie"
$DomainUserName = "WHC\lixieship"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
