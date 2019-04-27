$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.2.3-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7C6D738142EDBD15210D2C014AC0E9C3119116E85912D47D64BC6D6ADD4334B03E320FCA1EE36F0F07D5BCCA8922F120BDC623F21AA2D2ED533D98ABF4773BCC' -checksumType 'sha512'
Install-ChocolateyPath $installDir
