$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '65ACF84795C91D4D9A0CA8B4A3595DC0269F5868796AB4016E6DC6DA47A014CFF9A5C952EC960C664994A3A431DC1A0285DD2A0213D206C0E7FD118433CC21BE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
