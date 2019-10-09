$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.8.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '958FB306B245009D56B9EF5072AC6C1B455EFBEAE1495B7A38CF1B4F0D82156362334D97C7EB07C59D09B5FFBCC641B120E3981A04F787E810C8B155D2DA3FA7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
