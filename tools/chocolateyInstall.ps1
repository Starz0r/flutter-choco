$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.10-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '067CAF8EDA1003F4477A649B1B97C97E095A3624CDC9A6687876AA33B23DE59260CBE435B29F1B56FA8482045CF3E1AF49C2276FA0CF0C621B863F444A36FF23' -checksumType 'sha512'
Install-ChocolateyPath $installDir
