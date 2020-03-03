$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CD8DDC71B5E7AAEF2E909E1E3BBAA322A15443FC1BB287F18142C550160739BEFFFA5DB0776C9C3E3DED3799E6F02D664EF21923DD398FD3D872870CC4F4CAE1' -checksumType 'sha512'
Install-ChocolateyPath $installDir
