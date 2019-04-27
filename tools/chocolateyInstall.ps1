$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.3.8-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '43F181F37086AF8C0C6298DE9DB28BE4730C78865A2187C5C79F606640122431CBF1553A360CA695991BD3E4292678F69CB237EC76AEE6734A52019D21D960CD' -checksumType 'sha512'
Install-ChocolateyPath $installDir
