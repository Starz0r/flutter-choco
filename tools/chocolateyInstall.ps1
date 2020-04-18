$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.12-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B42DE9271FA135A66F394613C8C96299C35592713358DC131BF0FBFC7D9FD6957924AB8B7F7B42B95DBA530C61B83CFCD64E342D407441FC5622B119F0BDAAF6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
