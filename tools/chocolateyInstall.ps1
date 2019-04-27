$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '08B5C71C255C6B6BC3E6AB4BC55E802C0354715CBB829C5F359A4DCD48D1519F82925F1C862B898D12DDD3280D17725736BF69C96E23F8A88B98481E1648186D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
