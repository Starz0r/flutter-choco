$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F46A9EDC4A10469E706199A3C7342382EF83398632A804008BF018A984F4A820944F74CF2B5E6B3824E3CF28E3B2176C4A31945022E9C20C4B431D7AB62FF150' -checksumType 'sha512'
Install-ChocolateyPath $installDir
