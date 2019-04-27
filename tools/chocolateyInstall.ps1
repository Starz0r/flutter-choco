$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9D9BAEF9D6405A4937B949751928C260E9FE7EF91CA55D93286AB21049ABC459015E1C78C7BE3245B5B44C0C71404157B6843FB6300EE7D2CD8BCA8810424DEE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
