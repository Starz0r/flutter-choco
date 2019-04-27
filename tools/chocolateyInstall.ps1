$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6B39D478322320E5D91EA8C98C93D8D32E553E3268B39D31A193548EE1C1997DEDE166E5CF4E41E25B64B09265F4D9E73FDA886A6CFFD8629C62F58EDBEEC3C7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
