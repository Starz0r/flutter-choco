$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.5-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3CAE5C2651E42BA412C552F04322440DA9DC3E303906872149A8CD4E22E85D97F9617C17A3A1C375621D80A4D748B785D91E6BC9985A589AEA30A8C984764583' -checksumType 'sha512'
Install-ChocolateyPath $installDir
