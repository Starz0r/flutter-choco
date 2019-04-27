$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.2.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4386CE96F17FC8BDA6B0EA307D06920941A8E2F3C89AE758F1A92972D3654F6A92C8CFE1F2DFF52952BFCB2E154B2C5D2F2911ECF8D2C3F1905638276F033F33' -checksumType 'sha512'
Install-ChocolateyPath $installDir
