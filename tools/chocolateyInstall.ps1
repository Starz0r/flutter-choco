$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.0.0-stable.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1D894587586E989C83CCB0332AB59C3E5B4D9414B0A949A581B5EAA882D6D09B79DCD753E08E150D53355ADFA82D5280236EEAAC207BC8B61B46390AB9F23DBC' -checksumType 'sha512'
Install-ChocolateyPath $installDir