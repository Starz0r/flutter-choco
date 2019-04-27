$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.12-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E0A0B5953264167735DD76DDB5082B8CAAB6E64DE17ACA62C0583B1DAFFC8082DB3E10CC40B1C47C2F83BAFA1DCFBDB358DE811C64DF1A27205A4587B33AF6B9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
