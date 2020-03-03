$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.9.1+hotfix.2-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D2224EE3DD91B22588143BB6ADB7FD3650CD09BAB790EFB9E800D53B1088D624E1790B191F5C2B0A39086B898A6A87BF8B045E9A72D714A0F4128F9CC1816FD7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
