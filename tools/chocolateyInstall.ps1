$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.14-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3D56018B3E06FFF0B3FD0ADBD445805CAC4762DC816E30A0ED619566017FE7C68B8FA0183E14C971E06E447D79303E85282F8FF014A7E683ADE6AB5AB200F9A8' -checksumType 'sha512'
Install-ChocolateyPath $installDir
