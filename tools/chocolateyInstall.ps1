$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.2.8-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F0C4A0BAD202EF8A6855F1A2CFC320F94872042D59420DF49A971E9CEA8234AF62C840A448D8A3CB9CF485F6D7CE7CC6AE18C2C50DDD156DE44638033145EB75' -checksumType 'sha512'
Install-ChocolateyPath $installDir
