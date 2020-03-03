$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.10.7-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6B28BBADA71AAB04B16699AEFF15CC11CC80D7603599D5F108607B6692AC282D7684350E8607B5B33B1A558EC778B2249CF540BDE245BA0FA7BEC3D34C4CF3AF' -checksumType 'sha512'
Install-ChocolateyPath $installDir
