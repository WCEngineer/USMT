$LocalUserName = "$env:COMPUTERNAME\WCOffice"
$DomainUserName = "WHC\wcoffice"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$LocalUserName" "$DomainUserName"
