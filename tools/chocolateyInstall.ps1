$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.8-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '47F5CA1834D62B899BE89F5E8FE57D1D2E463D723B03C3215135B11C420D017D92C5FCDA19F96A1B8F351B0CE0602FC8DA7CAC4591B184C21C633583622016C6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
