$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.4.9-hotfix.1-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A66CC3352653213AB3AAD0878863071F5FBEC5070EC04294572F39540E98484252DB0EF42B92D450221364F1E720A244CA8E9701504613F15D9CA9A4E2C97D55' -checksumType 'sha512'
Install-ChocolateyPath $installDir
