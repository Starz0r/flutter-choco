$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B9B8DDC64880D58420D58703D69321306ECA958237B240B93EA1D1CEBE13CBEE07A342D6962E2B6552B567996210666647668FCFD5767CFE7638DDB417541844' -checksumType 'sha512'
Install-ChocolateyPath $installDir
