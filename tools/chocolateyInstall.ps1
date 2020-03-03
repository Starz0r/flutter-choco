$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.10-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '889699EDEA75678D21B5A0620F2AD5ADA4B162951D1AE27FCCA0788FE9D5C27D936CA4E1577D23DF59A3844942ADB816F8C8CFEE8ACE81777756FF9A55519534' -checksumType 'sha512'
Install-ChocolateyPath $installDir
