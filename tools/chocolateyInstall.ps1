$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.12-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '22184193532C00B7D03D2CEF5C6847CC98314EAC6B747311A82D2E3AEA694FE46237451259DEE0CC4CF827D536429941AE25022BE78782A60C2FEFF8B5F04764' -checksumType 'sha512'
Install-ChocolateyPath $installDir
