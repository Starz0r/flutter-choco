$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7536C61360D2AF568462A073CEF373A0E187B05B3577A1C78E7F7BC1D643B78D18A28C0DD6BD846E67FB556549CA04638BB6DD936AE374A3F8EF30A70C4EAA5B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
