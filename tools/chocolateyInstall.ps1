$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.9.1+hotfix.5-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9CD8BB312AD4C58A9D8277DA9237489E57D8FD45738FDF8EA0789205D5942C6B681D7F08F91183D329CDFCCE0B3E7C6442E162C6CC7320BF6001A87832823E49' -checksumType 'sha512'
Install-ChocolateyPath $installDir
