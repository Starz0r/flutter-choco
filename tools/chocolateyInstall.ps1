$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.1-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D66BA27D2BD69A90DFA6D19CEAACB47AC43FB6AE0CB96CEED7435E514F4F496401A874A30E1ED06F04178E4BEFEACC48C670863554E073F6FEA04A518B78A99E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
