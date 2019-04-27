$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D278D953D12B37C9E0CF26411421EB9E1D2E17AD062D5AD14A29F533568402152959FD149BF18BB587A59FE1642B27D5018FE941E70A99B57870B751C311508B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
