$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.4.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D935F2F418AD819FD421F089E6FC49AC620A8D776D4480BC6438C5D17524BBBFE4DC314408C85F6036A9AA6725919FAB84E4FF678B22F334A7C493121B72152F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
