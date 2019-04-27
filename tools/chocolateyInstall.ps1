$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.4.4-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B342A6513B7DFC51B8FB7019FD957F9B430132C80DF0783E9B71DAEDA0C3CE537A38EE89D53D60DC7DEACF39E0E7416F1D7C11C2D879AD1C30F14EDB9C847217' -checksumType 'sha512'
Install-ChocolateyPath $installDir
