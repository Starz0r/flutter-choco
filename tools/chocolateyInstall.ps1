$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '67CDD632C86BE845F2C1F350D2944D13E40D76457CB028A0BDDA2C041F9250F7F10F03F7185BD35EF102A72C547BCE40EAE7A08E9CB952984D557E4BFF245CE3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
