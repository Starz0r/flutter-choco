$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.1.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FA2B5424A71AF58BF8FAFCF3CE5C0A1F7B6A3F19E496E3D023F7B748F2B53AB17D2837889D759AE1FBA0E630B2074875138A4742CB098ECABD507AC21C1E9C59' -checksumType 'sha512'
Install-ChocolateyPath $installDir
