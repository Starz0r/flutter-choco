$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.5.4-hotfix.2-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E1345EA408D4845BA244EC8E4D87A6530D0F60C789E5A2A631D9792979AD7C1558F3A3A97E4FE1E12710C2BE727F6B0F68335E201D2E0C3C459CDBF808A08106' -checksumType 'sha512'
Install-ChocolateyPath $installDir
