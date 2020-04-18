$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.16.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '696501BB814C0A4EAB1D818CEF10FD0ABAF91A8F346860728F9A82B4A77F853A2C4307EBF5FEAB4E3345AD6CEE465507C2DC7E8BBA0FA16E2935AA4347FF66BF' -checksumType 'sha512'
Install-ChocolateyPath $installDir
