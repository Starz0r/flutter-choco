$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8BA4BEF089B989DC87659D8E99B3CC4718BE72385594381BBE6082C08E8655AF8269CA5CDC3A145AB34110B117A577A4B5862D19B353711B6C5C62634DEEB164' -checksumType 'sha512'
Install-ChocolateyPath $installDir
