$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.10-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '20A1DC1B32076AD1EA48EAC275FEFCBC630525EF860D036E39FE7142B8BE5DE08AC6BA4EF2E70D9AAB6B1434643CC58A1C2F22466BB2E4A391B83A50693CAB58' -checksumType 'sha512'
Install-ChocolateyPath $installDir
