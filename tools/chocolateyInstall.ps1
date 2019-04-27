$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.11-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DDE8EADD8E634A46E6AD4121AD089C16B6E134B8D679D500736614F25FF9EF71EA2D6207A75D2B5CBDCA23EFB6FC801692FBEE534F99C51510772D8FF5C22FD7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
