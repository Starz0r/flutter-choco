$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '58331163B878142BDD15539A564300A712874E9B66B46CDB67607A7761CD8A74E6A1526D184908B6F710AB5DE478D1CFBDECD8AE2951A1033FFAF313932A9558' -checksumType 'sha512'
Install-ChocolateyPath $installDir
