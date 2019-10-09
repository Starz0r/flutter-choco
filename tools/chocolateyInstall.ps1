$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '86053C21F5DDAE0399D231F1B5EB4BDE392A5E0203DD880DDCE8A81D82E5F21C555ED46B3A83749D0A6FC965B083FC1A9B3AD4B0BA8FD1612B2AC367A1797600' -checksumType 'sha512'
Install-ChocolateyPath $installDir
