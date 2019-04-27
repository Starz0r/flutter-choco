$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.0.0-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5509FDA646FF4533A2A74527577EE673ADA9FEAC44A5117F2FD4529A4CCE7CF97AB90409C31914E9D840D93E3B83F15FAFEE3A0E112F48B831F747B0D5C00842' -checksumType 'sha512'
Install-ChocolateyPath $installDir
