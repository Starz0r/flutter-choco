$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FA2E4E14D06F655D505C5D94F6492692767AF182B971BF684D58521815AC588546D872AE4F04D6EBB56A1533056682903165866F003CD25DEA64F454C03D8242' -checksumType 'sha512'
Install-ChocolateyPath $installDir
