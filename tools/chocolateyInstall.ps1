$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9630A1D1B20317E88C54B2C392C8C8A3A7521FE81E883BFB0DFAED7078C6DE472B3EE2236DAB3C19ADBD24064E604B30611651E293A8E1034B8225A3B0F7DC5E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
