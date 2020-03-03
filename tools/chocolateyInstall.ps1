$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D78E6ED9D87B5D3D85446433CA93CB2C7186F0BC6670C0467FC9FA77A0EBBE8AD3F9FA70A44B8229B6FC6FF0C878062AE0C12A9505B49FD555C62C2FCC2B3F51' -checksumType 'sha512'
Install-ChocolateyPath $installDir
