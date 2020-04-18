$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.15-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9246D130DBEE1F09EB6018463A878AB7E6C186B3AE14CEC54533EA8C14099F4519358CB9A08F36A1DC9062259D6BB52A729F79571D09483D6C2836E75D334AC0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
