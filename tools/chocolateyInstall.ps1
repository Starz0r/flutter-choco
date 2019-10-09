$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.12-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DBC929E118B90D01ECB5D7B9A91C10EE1C266CAD4AF7E941EABAB8F872F269FD101C017265D182AF427EDD5222DBC0E6582B603A6AF63A9A27236E51094F8394' -checksumType 'sha512'
Install-ChocolateyPath $installDir
