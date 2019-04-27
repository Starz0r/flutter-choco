$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '25E424B73F23376354132880429E2D3F8B785FBCA4815F4C41444A2D4B69A75714BFA3E285F5B964F62A37B679502CBD28296ACEDCB4F49A362A94B8D5AEC456' -checksumType 'sha512'
Install-ChocolateyPath $installDir
