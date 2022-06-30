$LocalUserName = $args[0]

# . (Join-Path (Split-Path $MyInvocation.MyCommand.Path -Parent) 'CloneUSMT.ps1')
. (Join-Path "$PSScriptRoot" 'CloneUSMT.ps1')

$ProgFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_prog.log"))
$LogFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_scan.log"))

Set-Location "$LocalExecutablePath"
.\scanstate.exe "$MigPath" /config:"$ConfigPath" /v:13 /progress:"$ProgFilePath" /l:"$LogFilePath" /o /localonly /c /ue:*\* /ui:"$LocalUserName" /targetWindows7
