$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3B6D538605212BF5B44331E17FB31ED6757C3D47E33C1B9DD386CDA6280319F8F8B2309667585ACE4DF7AF7418CCEB6C8A0678A5D1AB52BB4E674AB7354B4EE2' -checksumType 'sha512'
Install-ChocolateyPath $installDir
