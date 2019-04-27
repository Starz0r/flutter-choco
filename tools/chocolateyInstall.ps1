$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.5.1-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'AFD1E8D860D916AC887D40B865AC97CC74DB1297AA5274887981238985640DDE7EAC8ACE753B19AF647FE24B8A986D4D25EE1B261D800E4DC18D3838F3F8EEEE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
