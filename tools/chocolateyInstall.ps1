$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F2D48A28AA30A20C2CC67C1B5BDA85E885F857F69A6E71ADEE6A9097F2A81DA64BFF76B123FAA3247B8F2F662E3A647A8E5021174CD2A8E38D23E123B1A7BEF7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
