$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7880C2F2246CF316B46A11DB8D5B0F8A7CCA52153D22C5BC5169ABC2CFE8604074C82E5B79F6B5AAAAE113CD57F5DFE533F764C9E0410BABF7921E7790C3A447' -checksumType 'sha512'
Install-ChocolateyPath $installDir
