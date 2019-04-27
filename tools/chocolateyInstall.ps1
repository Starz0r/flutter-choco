$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.10-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FC66A4731DE7566BC0CD0333FD0EBC81B7CC4F6CB7D2E2BD1EE694E51588274A507C3221C97471798D70CE49E3B5FC0DC4ABDCC4CC7DFD9A376C8474637CF105' -checksumType 'sha512'
Install-ChocolateyPath $installDir
