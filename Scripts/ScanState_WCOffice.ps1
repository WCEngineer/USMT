$LocalUserName = "$env:COMPUTERNAME\WCOffice"

. (Join-Path "$PSScriptRoot" 'ScanState_Win7.ps1') "$LocalUserName"
