$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E956BFDC6D7B7BDF4B527C0F9C43ADAF6911D17CDFFA6598154BB42C75894494727C7C34B4C5725901FFDE117CD60FC457174D5C6A2A94C880C81BA86045AE0F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
