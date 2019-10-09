$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.13-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7FDFC16FF309FC76CC357AEF19C46BABBC38C8D003ABDD1F9B32D3B6C6B1C39C48EA2D418E76BE507D330ED0E0FB3178F06A2E5FC0384D10DD00E48A334B6AE8' -checksumType 'sha512'
Install-ChocolateyPath $installDir
