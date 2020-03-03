$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8BF0ED0C89BAA160ABE5B50AAA26A390E58DEF28E810F0E177184780F5220BAAAB1BB7493D79409492604B8C5940B998416B2C02E49C3621550FBBF7DC045284' -checksumType 'sha512'
Install-ChocolateyPath $installDir
