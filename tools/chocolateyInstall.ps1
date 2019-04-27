$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.13-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '69107382580BAE6D677C1BB924325A9B4AD01F3C543206985F03B76E2BB503995B7F4EC1A7570648C477B2B5A686C2FE4D1A0CC87A0A486B06F244B1CF714613' -checksumType 'sha512'
Install-ChocolateyPath $installDir
