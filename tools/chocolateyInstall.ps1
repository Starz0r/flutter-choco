$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.7.8+hotfix.3-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '64351021283A9C60B4AC9295EA87AD54618FCCC447E5EEED766AD1770E556A1F5B9A051319FE7106CD6269EBB71F87E1CB627EEACEE78D48DDC08BF1C5B464DA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
