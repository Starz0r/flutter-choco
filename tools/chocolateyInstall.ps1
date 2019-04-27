$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1B54926E4AD454B01DD001F09616DCC98B0839BFC105EB3B08FEE361A0B8137F2C94D0B1C8E38BE339A4A831F3782B548969D93AD0986BCA70EC4240C1FBFEA9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
