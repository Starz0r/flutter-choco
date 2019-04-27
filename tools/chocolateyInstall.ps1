$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1FA521BA534C778B81150038F90173CBA2DBFCCCC312D40DAB3A4B16FA0AED9843CFC383FF705A02988E143BE754CBDF10D4D9535E834CEE1E3E706C67F8B04A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
