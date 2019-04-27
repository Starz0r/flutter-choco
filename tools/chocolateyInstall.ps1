$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'BBD73D4305E027FCC8732C9BE96251B836F34708B424558CA84D7F7ED5D82DB02B3270AE54CC7F47092B2CCC147EA83BAFCB8698D5B21BDD2D9EBB7A2DD38D47' -checksumType 'sha512'
Install-ChocolateyPath $installDir
