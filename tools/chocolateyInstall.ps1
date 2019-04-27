$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.13-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B9344E9B697186364AB90BFE25BB783921E9C6B32082A03FD7D1072557CB5E0B494F1779D80F46839F7628EEE586A4DD3088C926E084D8AD7C4613E7C9BD8D2F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
