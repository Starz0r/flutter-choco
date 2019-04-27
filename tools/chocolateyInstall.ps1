$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5E5C74E74DAFF03386CAD92253E153F9E9297685425A460903CE2C691AEC0BFA8CCC010AACFE65EF8DE6D694C52F6EAC5FBA8A64F80F3C2F3802705A768A22A9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
