$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.6.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '25D988EA976ED43DF7460889D4230490EE26D2766F8405ADDBC5A42D51E368773CA19C14521D22C780DF65B2DBB7CC36671A752396D37C25F66A49BF9284DC69' -checksumType 'sha512'
Install-ChocolateyPath $installDir
