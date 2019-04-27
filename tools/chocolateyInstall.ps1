$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.1.5-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '04EF2DDA9173BE8538636A471CB9F7E182DDA38B65A5AAD76553729BCEE7576D04B423B9C04384B64155D59A8C24D42F16184ABF989B4A2BD9B13B3770C0694C' -checksumType 'sha512'
Install-ChocolateyPath $installDir