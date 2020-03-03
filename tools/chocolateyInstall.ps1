$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EE0523FA3752DCDA3D71716E581CCEDAFDFF5D3BC530104621A136A53962EAC730E1E54327346189164466A3EA476BDBC7F9487F434A7ECE2FEB7762EB9455CE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
