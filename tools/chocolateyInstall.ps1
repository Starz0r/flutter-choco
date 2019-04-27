$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1B0B49C8FEB8795E2CCC59636B94C31AE33DA85DC2E0EFD81F09269A207074BDE0C53987883E8BEEC36577443742625B6EC4657351EFD11FE5AF5ACE268F85EC' -checksumType 'sha512'
Install-ChocolateyPath $installDir
