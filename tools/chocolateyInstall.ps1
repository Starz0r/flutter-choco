$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C5F4A2EA3FA172D13744F543768C275A00CA5B7A23C2B0F105ABE86EE3786E3500B2E741B522A1499808928BE5F544EAFF0BF8CADC4EB43C702520CE755A6944' -checksumType 'sha512'
Install-ChocolateyPath $installDir
