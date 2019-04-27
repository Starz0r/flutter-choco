$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.15-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'ADC9A73E228C264B6AE941D116CBB86D6181C9535B3501EFF54D73A1C48BE19BDEAB8C4F72DA9087DA23584678C87CC73CDFA7D559370DA9EB375E9FFBA808A0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
