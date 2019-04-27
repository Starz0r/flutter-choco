$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.11-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CB72BD8CA6A0014842C46F51772E96551A1D2FE43DD160012AC8606120590EA7EDAE3A52F6E08E96EED7D214492F0D73EC96EA76969AE79138E96EA507B5331D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
