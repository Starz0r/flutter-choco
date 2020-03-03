$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8AD396087E557698C99B00C70273CCA77E746AC154BCE7F52C3FACEB8F7CF87101F280768F39D8C85E87F7384B857918F4D5A743267D072C81D8CECC496C1D7A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
