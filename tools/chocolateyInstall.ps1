$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.9-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'AA03703C5AE54D821794E32D2974D7F0062A8E3D1A4EBC8E48C8F98B44AE2E5D01A1CA18BCE5583D0A98F1663B25AF21F31DF381607A584664D2C4973DC2FF52' -checksumType 'sha512'
Install-ChocolateyPath $installDir
