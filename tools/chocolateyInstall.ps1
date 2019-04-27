$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.4.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3BE31A2E9422B64B1701DBFD449CFEA722666F03546AD3A730A398F1293C304A81DC03319FDA1DEBAD3F1A3281AD57BAA53482E7CB780BB66E26237629C2D9F4' -checksumType 'sha512'
Install-ChocolateyPath $installDir
