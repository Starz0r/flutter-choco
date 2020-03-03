$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F367FD72D7CDC3A130AFD1C055ACED1BDA2F135479AA1B415F98C5665FBDFD66E06F8952BF02BB318A2DF8C30C2F93E35F53D56446D89506AC5D4FDA962D3C1E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
