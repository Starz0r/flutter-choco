$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CB3C06767C8E6996369D229335A2765354B2B36776EA169EAB1B5C28332ADFC4F7A5A42B63334EBA979BF8A95A4E8BDD1E646033D5A618415C869BE759BB4155' -checksumType 'sha512'
Install-ChocolateyPath $installDir
