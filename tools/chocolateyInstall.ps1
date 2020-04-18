$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.16-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DD8D05BD2EFFC9121D834E79B4F23379DCF999E2A56D0564F42498116C569104D396EE67A8F9D96A5F2AF519464D30DD568B708427B4AC33EBE8C83D4C91BAF4' -checksumType 'sha512'
Install-ChocolateyPath $installDir
