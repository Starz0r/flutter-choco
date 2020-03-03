$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '95B09F4DFFFBF3B8A8933FC7420DA576A5528693026DF4CC2DBDB0D28842B1CFC09F27134C5AF9B39BBE643214E281A0CE8A105D14379B8B05609491AA68A407' -checksumType 'sha512'
Install-ChocolateyPath $installDir
