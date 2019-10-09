$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '71A66C0F2337146C09DDCE4A5D0A007E69F4EB45E23F53FE87BE973C444893A0830DAF11A235B9EEA2AAF6B9171200A90470445EC6F734B38B1C55A5EA475263' -checksumType 'sha512'
Install-ChocolateyPath $installDir
