$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '038F8D87CCEEFCC40DC89BEF562171EA513F6C6787B98D2C86CAFB32D1D7E333770DE57C88CACAA7BAA0916715575899CDB54533198C3B6A5D8BB1AF1C833E66' -checksumType 'sha512'
Install-ChocolateyPath $installDir
