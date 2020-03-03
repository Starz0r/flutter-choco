$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.4-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4E08B3054F0DE73AE1B01F5C24CF7B0FD640EF0DE761B4900299FEFEFCB770B5D31339E3B798531347339BBD8DEF60CD6F3600140ABB5E25560109DF0013AA12' -checksumType 'sha512'
Install-ChocolateyPath $installDir
