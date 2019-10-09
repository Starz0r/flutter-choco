$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4BB0A5892DA352415A7FD88EAE79EBFF0FBAE877A7C666C46D58269CF32AFA4203219FAF9B7C032C4789E310D25415BE2AE0259A5D3544104EB8864375B62056' -checksumType 'sha512'
Install-ChocolateyPath $installDir
