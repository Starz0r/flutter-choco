$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.17-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0F011504AEED466F4C54B3DD615A4B3A0B1ACAAE9558D83BEA6041512F024C3FD134C103EE32EBAEFE9DC32814358D20B8683B9B8777A15A20D222487FBEA774' -checksumType 'sha512'
Install-ChocolateyPath $installDir
