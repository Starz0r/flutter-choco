$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F97A7D095EDC37E87DEBF96B265C9A4B9A2A365F907EDA369CD1355676EBE2FE93CF88D9AAE8B91008F9EC1F247EBFFB51625B15C371B4EA75A4B942C211AB22' -checksumType 'sha512'
Install-ChocolateyPath $installDir
