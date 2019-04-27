$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E9DA58FDE5CA33015F24E7DC15D932BFFAE0AF955341A852D4275DE9A56BAF90039AA376560DDF6FEA40022FE5379842D373CC1CEDC532647225AC0C6A042EF0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
