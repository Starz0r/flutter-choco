$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.11-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8724741344FC79FAF5807650A20B582ED9E00AB15A54AAE4664CE4F3D8B7F524638F7A1221A0CFFE6D58366958EF01A0CA4A226765A33F5183A64843EB3FA29D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
