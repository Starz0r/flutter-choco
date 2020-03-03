$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D6AFECA883B0FB0E63284D8C11D038CDCA256BCA25DB9C7450BB6BCD110630CBBC25996E3E703B2A871100775880B6274700321C4D7220E5CBBFB66CD7A1C4C0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
