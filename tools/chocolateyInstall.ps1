$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1E0DFAD8CBD5CECBD50E32BC6F805DA284BDBB219B88B7A7DB9E62ACF540813DC61FD5EDCC2F853436EFF6EF4D045C55996C59ED5AECF0AECEFF41A85E999AA6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
