$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '086631728598EF5B5A8AD578700E94071074899B98B5D7B68DFB6877C38F8DA52EC285E422C87D81A8C45AF7BE4B3F961D186DBC9B5890094E64648B727E0D65' -checksumType 'sha512'
Install-ChocolateyPath $installDir
