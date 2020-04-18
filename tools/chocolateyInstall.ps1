$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.12.13+hotfix.9-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '50E68BB0D99C549586A01535EF8175FE72CBAA3C0206887CDDC8F532D71F42EBB578851E192D90462EE1AAD590B5D039A6FF3B8840F2E038FA81D4E860F81356' -checksumType 'sha512'
Install-ChocolateyPath $installDir
