$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.8.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B03DD5FE81268699D2A7C05087879D101D92AB54256920EA918DF91E0E851C704BBE69793CFF641733B00D21C3B5FEF2427E8175FE9B455B7CBC759585EB8D54' -checksumType 'sha512'
Install-ChocolateyPath $installDir
