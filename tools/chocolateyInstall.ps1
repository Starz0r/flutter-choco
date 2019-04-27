$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.10.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5F49F2B647A9AC9B7F50104F9099AF1C52C5B7FDC57592618E55E3173E71A6054D90BA384F30301472874D0BD7D08CA2BA0BCB5B2616B4983957777A8ADCC923' -checksumType 'sha512'
Install-ChocolateyPath $installDir
