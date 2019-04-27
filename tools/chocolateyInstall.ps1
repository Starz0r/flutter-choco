$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.3.1-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '905C2A3F826C1912E462C08A1BC646EF1670996F1DF6884F46C5F1EE342D741531A005772BB109EEA5E538A1DB8E94EE7D1BC7551A0391939AD1DBEA585F5711' -checksumType 'sha512'
Install-ChocolateyPath $installDir
