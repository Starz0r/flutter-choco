$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8E88F473106C78DDBF8875C3599630C4E1FEBF2049030C9EC0CDDF5262F30192F9E7C2FFEA9B00D6AE7EDCC00DF4AC510CF6A9BDDCB4A50B2AE4398922B62CEE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
