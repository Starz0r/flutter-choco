$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '135CAAB1D0C2D06878B1DF16AF408C7A336F1B8306D4FF320EE76BA107F618776810B41649351389AD5D213E11BDEE04D05A2E35A533EA0AD5FA61287EA1009B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
