$LocalUserName = "$env:COMPUTERNAME\engineer"

. (Join-Path "$PSScriptRoot" 'ScanState_Win7.ps1') "$LocalUserName"
