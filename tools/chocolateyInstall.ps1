$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '68C4632ACE2BC45BD231F128FBFBDD962C70781809F9E7171196028AA55B7BB201B4D4E955E32E77C957CBF188FFA77854755BD726A36CF5185E631D6313215E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
