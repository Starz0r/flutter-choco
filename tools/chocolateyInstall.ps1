$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.0.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CD83A42B651457DB200A702F9A3EA120479117298F3201471D5F877EA91B22459A5CBA53BAFEBE5452010B58469DE0180843F2BBFE356F0AFFC24CC0E855777A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
