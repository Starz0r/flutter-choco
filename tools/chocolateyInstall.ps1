$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.19-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '78F57FCF509E201F18801FF7E85D7A9AC37E836F3F4EDFD67D337837AF95F85BCF904285784554E0D85D91840F3DD077A1976D21ACE369FCF3A90A78A553826B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
