$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.8-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5C3B1A9C2057FE545A638E191E2FC90795D1B5E68C68CACCE8392DA637CBA87376C1CBA53FDCAB6A3CCE81987A6EBA2A4CE952A43AC55EA0A8E014ECDCCA8547' -checksumType 'sha512'
Install-ChocolateyPath $installDir
