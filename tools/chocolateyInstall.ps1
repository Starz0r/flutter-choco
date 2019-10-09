$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.6.3-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'File 'C:\Users\Starz0r\Desktop\Flutter Publishing\flutter_windows_v1.6.3-beta.zip' doesn't exist.' -checksumType 'sha512' -SpecificFolder 'flutter\'
Install-ChocolateyPath $installDir
