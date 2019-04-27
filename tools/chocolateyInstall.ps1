$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '896A9FA5AE0EF350706CDE6EB4CFD6AF9562CC2D374C7AC6ECDA597A2804AE653CDA4CC700C99592678819935A19F9EE89DBE5E0851D7D90CE2ED90A4BEA9261' -checksumType 'sha512'
Install-ChocolateyPath $installDir
