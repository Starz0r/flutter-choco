$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '98BE85E456BCEDCA0036635B71CF8283BF3BBED51EC968D5452BBB23D44A9FA73FA8FFD564379F7CF98E933E9F9A52D0F648158768A112EAD31F7DAAA40FE83E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
