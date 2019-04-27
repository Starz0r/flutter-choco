$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.10.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D20B29DFAE7CBE82ECB774F3671D212D5B161F3A608EFC08693E8101864F75B6888BF54C8F38F53AF0236545910F7B3E7F4D990AFAC390F866E54F6A9BB49E3A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
