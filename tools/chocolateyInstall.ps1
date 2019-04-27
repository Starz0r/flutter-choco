$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A2552E0CB1F547E6B480887D87D15177655F160B674767CA7D3054745F7BD0B455A709723B707FC4073E7D8705950490D99BF3E4D9A3B216D9B327F199F50ECF' -checksumType 'sha512'
Install-ChocolateyPath $installDir
