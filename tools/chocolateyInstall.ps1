$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.9-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '420E3DDA57CD9472B1CA29B009BCD1509174EA2AE160E4455ECD2DB9A97CFED8B874DC028EF3A8A4AC89EE40CB4769A548C886A8E0E3030E90E7037F7E1B5F3E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
