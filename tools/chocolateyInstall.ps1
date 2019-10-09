$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0242026CFBE131A342A1E136A046847A99A90491A581F3C56C9A75AB3A97B5A7C7259AA2F88800CE5F9AE6D1DCEBFA6231BABD1C361DADFD192B6BC84081DC9C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
