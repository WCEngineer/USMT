$LocalUserName = $args[0]

. (Join-Path "$PSScriptRoot" 'CloneUSMT.ps1')

$ProgFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_prog.log"))
$LogFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_scan.log"))

Set-Location "$LocalExecutablePath"
.\scanstate.exe "$MigPath" /i:MigUser.xml /i:MigApp.xml /i:MigAppData.xml /v:13 /progress:"$ProgFilePath" /l:"$LogFilePath" /o /localonly /c /targetWindows7 /uel:100 #/ue:*\* /ui:"$LocalUserName"
