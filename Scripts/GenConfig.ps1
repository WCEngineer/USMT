# . (Join-Path (Split-Path $MyInvocation.MyCommand.Path -Parent) 'CloneUSMT.ps1')
. (Join-Path "$PSScriptRoot" 'CloneUSMT.ps1')

Set-Location "$LocalExecutablePath"
.\scanstate.exe /genconfig:"$ConfigPath" /i:MigApp.xml /i:MigUser.xml /i:MigAppData.xml /v:13 /o
