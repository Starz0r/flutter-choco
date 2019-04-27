$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CE990CF98E58D1987EE491585DC62BD5993C5C9BE2E31373CF734E994E06D43EAEA649D4B52478B637A4AF9D58902FA4156EA74FF7F3E7DB9FB1C43044DC2BD1' -checksumType 'sha512'
Install-ChocolateyPath $installDir
