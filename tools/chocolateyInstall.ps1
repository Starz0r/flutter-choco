$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A0F71D07ADBB28AE84533E9DA881B3D9EFC179079D5A88250119C414BDB642FB0CB8FF444BA2FF67A0906A799727B5CF602E8FFB3591821B53F93DEF162FDE7A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
