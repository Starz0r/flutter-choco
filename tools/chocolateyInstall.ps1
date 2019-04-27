$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4D2DCDCA521FEC7FE3229D052CBBECFC2DC29D0404848DC552EC21875BD9F076042BF25321C7189CE74A2E8B49EF407B83C153389DCF30405C62C79EF168EDE0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
