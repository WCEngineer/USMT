$LocalUserName = "$env:COMPUTERNAME\generalmanager"

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$LocalUserName"
