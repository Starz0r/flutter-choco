$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.16.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '68B5B444B1D50C63677010768BB696C7CDDB9B4491D09BA3F5E8E4A35F7C1AB6C0903E39EB0AFD072A9292A70E5DCB623F407DC6E4B4BA4C18B8CA9EC0C02D2F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
