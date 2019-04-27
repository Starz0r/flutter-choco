$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.2.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4DF0F379E5464BE76568B5F93DC42EEE897029E365CBF1E2AED7F412A639E347AD75677204365E07A6E1D156F32CD7E26B6E1E5CCCFE7F82F802F1A39B612854' -checksumType 'sha512'
Install-ChocolateyPath $installDir
