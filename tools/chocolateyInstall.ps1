$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CD8D6DE8BFED6BD057AD1929D3A1B06C5F7152B0B70F9BFBBEF53900193F5E7A42ADF64AC55759F3EA04E638440AE3B840AAA62862275B0FCF968195E223BC70' -checksumType 'sha512'
Install-ChocolateyPath $installDir
