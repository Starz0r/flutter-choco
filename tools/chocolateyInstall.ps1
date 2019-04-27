$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8ED3DD7AABBB37342601A12FAF40D8AF04009B2E6B6A2E1E6E3B9E66E12E8F4E59051664AD2E09D703E7DDE767F23EDFEF81CAEF7875BB618358780DF62839D9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
