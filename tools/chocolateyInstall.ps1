$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '543045054F5972CF7D8ED2A1E1737020942037965236D7D6DAF5EE32F3800FE80E79704A597EB681E206AC0566BC209B357257ECBCC641E14FEC97132864EED7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
