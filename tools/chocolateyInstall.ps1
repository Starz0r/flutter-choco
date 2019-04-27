$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '497E4678C649E984D2CE8D53BD214E2C160B4C6C3CA28628987B150129C7C8893DEC7CE201542DD39F2FBDED14BD59B4AD801FCCB7595FDA527011638285599A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
