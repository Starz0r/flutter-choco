$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.9.1+hotfix.6-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '36DD6F8E1BF18174D81671C0F87039378A14E48247C2172A12FF1144F519E51087BFF6AAE0D23320AFA150104459D26C3B4477DC16F9B7E2BA3FB343BF03DEE1' -checksumType 'sha512'
Install-ChocolateyPath $installDir
