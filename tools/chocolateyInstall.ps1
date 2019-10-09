$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F55F21111E788246B3D7CD4BE446E9982F8CD7C681A235129F30A0AA6D568005EFE05A5CFF8E8DA55C96925EF0AB2CD91384177AB2474BF6026BC4C20C8F7192' -checksumType 'sha512'
Install-ChocolateyPath $installDir
