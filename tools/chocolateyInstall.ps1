$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '762872235C6D800C0007863EE18B3B10ED9C142EF723458EE290421FB71298C0184A453C868FF6524B50B8378DA203BE2F19013261316F4E31EFEAE461B8A75F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
