$OldUserName = $args[0]
$NewUserName = $args[1]

. (Join-Path "$PSScriptRoot" 'ScanState_Win10.ps1') "$OldUserName"

. (Join-Path "$PSScriptRoot" 'LoadState_Helper.ps1') "$OldUserName" "$NewUserName"
