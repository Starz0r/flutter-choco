$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.8-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '45AAB482AD1982B6676E43791B8390C4E6AD481F2DA724283497339BCDD31E2BDEF881A90EFCEFA19EE3D9A6A7C8BC672A4345A5A9336E55306C0D023599EBBA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
