$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.1.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'File 'C:\Users\Starz0r\Desktop\Flutter Publishing\flutter_windows_v0.1.9-dev.zip' doesn't exist.' -checksumType 'sha512'
Install-ChocolateyPath $installDir
