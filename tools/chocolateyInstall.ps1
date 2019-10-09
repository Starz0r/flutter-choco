$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'BF1AF93EF37A50962370DF318331B0DF9C3A38937E78508652F2D59C6A85B63FF236DA2F35A2CCD447BDF0688203D7C1F4A4F983982ACD8940CC320D2131F4E7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
