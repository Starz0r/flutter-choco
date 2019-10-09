$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F3D2FD0E2354A876141EC729052E38B026724D66F5B2F2E0EEC17115555CB43BA7F7C9B088969F849CA67874C8460DDBE1C56C9C82AEA7EEC1C9C9B4E8435364' -checksumType 'sha512'
Install-ChocolateyPath $installDir
