$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '04638052339B5051BA276A8FEF9583E64304BE7ECDBF0574FC5AE36F2E07293C5452BBD03B8C240BA8C7DB2450BCA7335CF108CF29697137B3460F9D0DE2BCB3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
