$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8F390626A1A494A7D59426AB113C2A45FDAF56DE1AD0D4F4C3E3077E0A76FC142BE7ABB96E6C66820E9267C630539789529CF00DAC17567AE90512B0D48D0969' -checksumType 'sha512'
Install-ChocolateyPath $installDir
