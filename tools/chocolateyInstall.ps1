$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.10-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B69BF69CE25578473F616A2E7ED3B7FFE84BD65CF200DFE4E9464C893056B32D5838AFE71A7B91AE7903D67CC90A7884B273A014C5B0A1FE3CAE6547FEB7A67C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
