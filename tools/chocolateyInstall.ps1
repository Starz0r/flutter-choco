$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '073BC045693D88FA972F9A26AA1F30D41CD7FB7403A46AE6033BB9390AF0EF02AA51E0F660E043F27155DA902B7494A8C827B66563AB9D4950930B718BABFBC1' -checksumType 'sha512'
Install-ChocolateyPath $installDir
