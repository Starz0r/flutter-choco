$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A34B5B16F5496F4739966F74C12B524DC5FFF5B26225428454A15CA8208731AFAC5001A1BD94E0374CF706F7011E73F52BAEFFA29426526E1EE6B645CEFC788C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
