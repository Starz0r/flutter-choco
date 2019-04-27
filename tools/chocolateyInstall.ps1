$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.6-hotfix.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6D4BFA35C0B3C95A4BC37FE8FCED36E0F1E88B0DE6E208805908F74A1EF64CD28DA03F2D479853F00671A36330810E41B08464736979FB405659D8051E348535' -checksumType 'sha512'
Install-ChocolateyPath $installDir
