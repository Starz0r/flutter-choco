$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.11.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'AB2205D5674EBA8A96CB91D0A58AA7E0EF7E6EB00F315A3BBE59CC25B578CDDEAFF771BDD7FF9B8B46635F0DDCFDAC2C4A4A29BC38890961FC0F8981908963C7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
