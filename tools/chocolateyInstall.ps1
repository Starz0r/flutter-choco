$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.10-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D328E2A0CD4B55A9EE837FC579E10E34168E5225BFCD68A4DCC6B23690BEFD0456974E8368DBCFEB7CDEA5A7D73C59562BF5ACD4152E4882E0F37605711D31ED' -checksumType 'sha512'
Install-ChocolateyPath $installDir
