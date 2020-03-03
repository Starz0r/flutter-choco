$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8CD46E057460785244A75C8006041B95D7655B2FFB2E2C4C027173A4FB422F563620FA0F7012E022858F4C64CC62CDFA6F4C0E3ADAB2FA70DC94EFDCB7D5D741' -checksumType 'sha512'
Install-ChocolateyPath $installDir
