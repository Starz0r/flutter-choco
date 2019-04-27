$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.6.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D29426BD59910AD07CCC59B989B39668AD80BB553430D2A3D0307D28BFBF75B9040AE7F58F4E1782D84664692C957F37DCE71DD2058D80BFD0763823B54032A3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
