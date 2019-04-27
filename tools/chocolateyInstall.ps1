$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '552F9A4B215B8939A67FA7C62DA732AE88B17AFA3E8A2A3E1F2D17D3A404EDDC16A68DB4D4D82C6E0EADCF2E1E11D00E9070EBDBCC3751A6C3FD696DA727F0D1' -checksumType 'sha512'
Install-ChocolateyPath $installDir
