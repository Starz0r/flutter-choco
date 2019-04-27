$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D20070AC6C1F38E2260B8BCCFE72386BC87DA9957DBF16079242422CDB817A6B681DE165860F5D9B9FDD29B7EB21050B3F72B93FD9847CC325F283DD28486DF2' -checksumType 'sha512'
Install-ChocolateyPath $installDir
