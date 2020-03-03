$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.9-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '59198499414D19BCD9A72293882A6E636FAB44806E7FB40A8DFE12CA1217B300FFB448353A959B4728632B46F668CDB5EB28C0C79C21BF892E72A33EA682154E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
