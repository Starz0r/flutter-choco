$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.10.2-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3D8A28D8C497F7010026DED6C6B4A87C69153D52787B0E7CD0C1DA693654EEF7929A3401A1085933BCB421F5BF03BDC448724B9FE6D025748ACBED2C6E14FC0A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
