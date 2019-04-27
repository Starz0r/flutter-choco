$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '030D10C3270898B633E5EEC19AFB5A6B3C20D0747865AB111F7CB263459107310551044120BC7FED2069865FF997AFC457B9B0D4BCE962E0B4575760070389C6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
