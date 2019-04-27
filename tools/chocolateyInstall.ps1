$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4BBA108BB0CF54F18F55868385B524047BB48C8B39464EE4D6BE0029DB40E37AA94DA4C3D6AC9FDE11BEC6B0FE5D216C998A46D789E6DED6CE125B9A31C86DB5' -checksumType 'sha512'
Install-ChocolateyPath $installDir
