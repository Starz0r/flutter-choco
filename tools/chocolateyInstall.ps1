$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EBF5D06FA20476F5C8D1A943F1DA3E81BFB28BBEB843190DAA406A125384276B51778F0AE58339BE78CACD8E6DEC7FD46FB1171A00F40490446DAB11D35C3413' -checksumType 'sha512'
Install-ChocolateyPath $installDir
