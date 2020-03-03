$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6EA3158274B2C1AA04C4D8A8218D51A5E870588729A0DDEC2369D3F11D1A50C63D42EFD47371AF2367C88C1CAD0D6FBA2AD5667105F6664417522B9E99F1DAE3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
