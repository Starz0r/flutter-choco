$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '08FDA8DEC6849B04158E05E76B0C75C500EB28D1DD454ECAF91B0B6B6C6605745EF702C32388027B36CC981BF2089A33ECD70F906FB9EF75010B33CA849ADF4A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
