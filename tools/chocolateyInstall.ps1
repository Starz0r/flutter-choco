$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.7-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A597678C1BB99B49C42DABA9B1F072D3D25D138DB684512F90BD0189D57548D332453E6196AC4C0187434465BB051739D88FB3BB5DF9803D24FE68034EF4B1A7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
