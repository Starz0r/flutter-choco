$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9E384BE0A245C4648BF7CE1289E280FC0C7A7F87C3294D56C8A1986F396FB6796AECAF7AC429A8CEB3190E1AACC8C34C364BB983F43B54E3690F37996FE4A6E6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
