$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '08DAA85DA6F2F3EF017DE9EB1B8A7F2579754D066F0C2D18189EA283CD55B922F6D69A8BA886F3CD91967574A370AC1923B5D17BDAAC3D354F668B2B1B17A9B4' -checksumType 'sha512'
Install-ChocolateyPath $installDir
