$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '42238EFA2539721DBE363D26FD4EB928A19DCC2D9183FC916C90859D61711D34C9B7905833A0B1618777B4784A5F1532D2C42C662F6B5EBF21F08445F1B59C92' -checksumType 'sha512'
Install-ChocolateyPath $installDir
