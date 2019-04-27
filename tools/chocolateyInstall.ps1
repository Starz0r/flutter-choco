$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E26DEB62717C91B9C7E4A7ED2297FB323647B51C5444C584FF1BA219D4FD85337125AB85458E88592DC4E69F061FC9177BC800603AEB9D5E9967126A0158BCD3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
