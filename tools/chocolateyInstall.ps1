$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.6.0-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2EB36949A74FC9797F4550BB1869C05C391FF763EA7B3EC8BD35AE15194E8A4895E2453FAAA198F4885054EC5F819CB453F7B7B954A3A5FB58E0AF2434F15805' -checksumType 'sha512'
Install-ChocolateyPath $installDir
