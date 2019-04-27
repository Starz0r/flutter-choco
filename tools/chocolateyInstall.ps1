$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '532AB2323739E236A0A271C6CFD25BBBD6ADDC0843F7F813D931E832B54238AF1DBC825032D0E2B8950B4E8DEA42C99BB4C241B792C6BC9A3C2EC3C34D94071F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
