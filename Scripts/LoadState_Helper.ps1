$LocalUserName = $args[0]
$DomainUserName = $args[1]

# . (Join-Path (Split-Path $MyInvocation.MyCommand.Path -Parent) 'CloneUSMT.ps1')
. (Join-Path "$PSScriptRoot" 'CloneUSMT.ps1')

$ProgFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_prog.log"))
$LogFilePath = (Join-Path "$MigPath" ("$env:COMPUTERNAME" + "_" + (Split-Path -Path "$LocalUserName" -Leaf) + "_load.log"))

Set-Location "$LocalExecutablePath"
.\loadstate.exe "$MigPath" /i:MigUser.xml /i:MigApp.xml /i:MigAppData.xml /v:13 /lac /lae /progress:"$ProgFilePath" /l:"$LogFilePath" /c /MU:"$LocalUserName":"$DomainUserName" /ue:*\* /ui:"$LocalUserName"
