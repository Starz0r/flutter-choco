$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2B8A0EEFAF8BA55F64E70B5DDCB3266360B14A964006C29E32B4D123A32C2846B05409B20D407402D0234F29C6538FCD34C5248DBB981B96EB7E6C71DC2B0DC3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
