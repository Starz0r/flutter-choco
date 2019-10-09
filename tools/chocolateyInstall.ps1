$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '89FE85F23AF2559A5FD94B68A25E37E750A8638E795D7F16682DCCA78EFF6AED624A77A688CFBD0C6669B0F095DB793CD1CD5869E71C302D8531696838511826' -checksumType 'sha512'
Install-ChocolateyPath $installDir
