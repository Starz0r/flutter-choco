$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.9-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C0EE8C98E95FBD032D9ABD90314CE7BA1D103FCE153149031719C5FE733395B2F23748E570EBF6B2C26C9FBA8B8D5483AAAE963D2F3AE3FDA387C450881ADCE7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
