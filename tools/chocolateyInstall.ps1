$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '47F12CADC45A66C6160DCFC6811C1927F704DE4008EB6631F8AFF81317C6B4A57E2E73187F9646F7B89ED492D0CF2A8E9C35C3408689F92CF63F31F69B00ABDB' -checksumType 'sha512'
Install-ChocolateyPath $installDir
