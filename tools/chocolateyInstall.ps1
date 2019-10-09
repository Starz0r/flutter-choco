$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1FD9C016B39BFCD46B75945EA7A81655EA585638AADF1AA0329773A3D75651FC65E3895E2F5A538D7C0C6AC9E71B37E0AAD60749F1372F1D5B9A63B3EB8A8AB8' -checksumType 'sha512' -SpecificFolder 'flutter'
Install-ChocolateyPath $installDir
