$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.1.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C3C53A1DC656269858B451A2B9C74099B1C9F2AF7AF2FAE3A7CCE7022E8CF7AFBD70D1A5A5E1A3EA9EAB6CB7C0BD394AAA64C2E1967339266CF8A20E54EC5120' -checksumType 'sha512'
Install-ChocolateyPath $installDir
