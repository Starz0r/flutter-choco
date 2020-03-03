$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DD9E7B471004B93F8EB63C5A68F759E0C42F5563492E3777EE9CC3B2C4852CD8B281C29CE6DBC85E2860091272FA9BBDA2344B3093679713FB7EB6E85A17122C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
