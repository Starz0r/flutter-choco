$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '51BD75436FD5C505A07CF2204C208A177EBDBC88FF177632B8CE1FD78031B8AF7D7BD020A37DE9910F9D96290F93DC116767580653853D227D14E0F8553FF278' -checksumType 'sha512'
Install-ChocolateyPath $installDir
