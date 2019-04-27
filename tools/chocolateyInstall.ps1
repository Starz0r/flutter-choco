$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '83B9BA5E12D350603C34C43DD5D9BA3EF2B4EF6F595F286D7712C92351858E68A53EC093F6003DED2F3458E6E58999F06D77ABCEC5C6A8F1B76439F51671614B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
