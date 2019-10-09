$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.11-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2B39E0D78B00FFD1650A765D41290FEA4AA8B70CA5281A29360FD5669E51248C2DB2A5E58083429E86F787B68658CC8D862A51FA6A7152A3322C4274E0DB585B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
