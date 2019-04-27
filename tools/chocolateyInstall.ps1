$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '966A683908E6F307EBF97053F7666ABF149A1884387959614BA8EE6D552AAEA8B34B2ABBE0BC5B5C4292559EFB65D79578E809AD423E32EC729327B88E2418B5' -checksumType 'sha512'
Install-ChocolateyPath $installDir
