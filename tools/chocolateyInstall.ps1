$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '67EEBDF2129DDE0617E978DA5AC5D2BF45DC6A84AD290F12CE1DF17DD7C050FF8CE394CBE89B8DF508885B65843D267E77DFAD16D02A8FCDB2C63E4E427872F3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
