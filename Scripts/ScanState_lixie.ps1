$LocalUserName = "$env:COMPUTERNAME\lixie"

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$LocalUserName"
