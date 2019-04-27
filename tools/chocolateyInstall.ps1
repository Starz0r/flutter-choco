$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D319C84B60022B21538953BAD62BDB62EA074736B16FE305CD3D99F01C0311249B86D1493A53FF94A67F37DF498194BE4E1194ADFE785A033656A1FC2F4CC8BA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
