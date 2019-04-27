$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.12-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7E1CA727437E373B8130A0DCB37FC373D205931F53923F9539A449D7ACF6940E66F6384532274DE17B5B8486D6F5D4F7A49E321219C2DCC12EEC27CD1BB244D9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
