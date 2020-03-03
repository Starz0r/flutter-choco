$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2C6318A71266F984FB4457AE50FAB375BF97A0F130340798EDD31090A45579F5FCEC57CFFF28EEF93178541586ACD15B97AB53B9DBCE6EB4CDE8EBE6BD85823D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
