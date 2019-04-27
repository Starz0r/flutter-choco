$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '75847B63ECEA383313934F70BAC0A2A3EF0471E0BD57BAFA456D7DAAABF4AE59255E27666F1171194A9E01A73EE7C005D76A2105CCA7B99C868571E23829CA7F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
