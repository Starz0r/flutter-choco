$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '20A8AAB0FFA9E3A9EB5B37E641B1694B5E6BE8034BBB63E6F6CAD881CE891C9E7204AB83AB758AE414406E9447335EE918179EE2737CC3E3EB49384FE3E9981E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
