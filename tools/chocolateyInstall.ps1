$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'AE9DD05FC3AE265898AD00320E322868826ABF17AA9E5830B5C789553657B869FF38711E1FB94C58107ED0F9E2B2C8C55C876769DE0EA5578676973C080E441F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
