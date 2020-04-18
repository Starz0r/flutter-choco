$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.17-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9C61D98B1210A0527E799E34D826C7FFEEE41780B41E3A8622064E699721E506F7F43336B6387A5DCFF930559632FF018B92E5B65888CFAF407B2E1295BD7024' -checksumType 'sha512'
Install-ChocolateyPath $installDir
