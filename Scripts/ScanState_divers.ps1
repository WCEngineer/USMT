$LocalUserName = "$env:COMPUTERNAME\divers"

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$LocalUserName"
