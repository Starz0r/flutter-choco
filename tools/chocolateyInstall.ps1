$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.14-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '21644AE18AB7C8F6B9D725D450F8E8E6BE54BF6D1F9FD41D07ED594763BAB383976D564412FAD97ED8A4EA575EF581FD4C9BAEA766BD1E5A3398DC925F72B703' -checksumType 'sha512'
Install-ChocolateyPath $installDir
