$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C62FD633475727374444116E012BF8B2A2F4CD1B9BA02D0C6968FC2347BE8D1915F5807960277ED2B967316DB30126BFD736C65EBFF13AAC0EB582C3C75DE836' -checksumType 'sha512'
Install-ChocolateyPath $installDir
