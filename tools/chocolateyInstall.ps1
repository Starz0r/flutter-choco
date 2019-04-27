$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.14-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4DABC3554FA870EDFBCD095592948740294543C5EFB63B76D41D8ABEF91B3CFE779D31DB03F85165F1DB82DA2A0210C470D362B03F95D10E6FADCCBD88B5084A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
