$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.3-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A2FC503AAC050B8B2834DA9FF21210FAE2DCF644E50E0196706536C22B816328FAFC765736132A714DDA509DD57D6220D67D1787ABDF0570DA05A6DB636C4650' -checksumType 'sha512'
Install-ChocolateyPath $installDir
