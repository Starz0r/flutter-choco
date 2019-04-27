$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '648B2D3D08D98FD11FE176EDAB0EE90F386B64AF7B0A21FA1958592D002389F10D527446B36839B48D0C9A2438373C3FBED98077332DB22F5C1BF5300B38F816' -checksumType 'sha512'
Install-ChocolateyPath $installDir
