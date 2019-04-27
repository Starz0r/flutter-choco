$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.4.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D40E5CACFF6DF37671947B9AB5CD6A0E649293DD50AA49FBE0E96C2BF22FB9FE10DF45DD58B3FEEDD3DC59D2F4493272DF65CD4AA96CDCC38C52E60F5832D58C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
