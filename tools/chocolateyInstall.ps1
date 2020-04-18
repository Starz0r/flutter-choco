$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.11-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9411F0850157E4298B43A875EE11395FD2BEEBC3A33FCFC7D151EC83B11DAE218D5F526AFDEE2ACC9451B24D3DA99E649062FC25D7C9CD5A70621D711C65196D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
