$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.10.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'ACC06F76C2902D8C8ADA1CDBB285E0175148D95918F9FB43F3EC6A4A1009589F4D8AB044B868110AA2284A4D8FCCE8AD8B2546DE8D30D0274CB3C28008E803FA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
