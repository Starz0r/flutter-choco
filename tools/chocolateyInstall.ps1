$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '212EEF6DF1D9B3CF025120052AAB96DB39BD17442BEC4159794AB49EAD8883B4E7932B693131583F78DFDE7BC92BAB6BB2D072E1602A8857D74BE18FC62ECA77' -checksumType 'sha512'
Install-ChocolateyPath $installDir
