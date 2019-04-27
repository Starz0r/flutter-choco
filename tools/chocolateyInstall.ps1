$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.11-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '27338609B799B4F193B16A07BE26E411C6873573CA6C355C7FC43B8D86A1B12416E2FF243B33F91888EF2AA9C6BE5838F2A6B8CC3D07514787E452A8A5A8901A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
