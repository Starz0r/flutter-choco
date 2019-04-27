$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.2.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FF2C7B59EA69D3407EDDB0F05A65FB001C8BE88D6C196A4BC5275E6EFA6E6BCE6EFDFE7384B7BFCBE4F1020BF2BE0A46E7E3683FCE901DE15EBD4BD7845F89BA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
