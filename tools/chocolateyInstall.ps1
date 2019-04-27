$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.5-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '15FD6FDFE1CB900DD3E49C9ED062DE3EB5F243F1A5A5FFA661E0818B7B8EF37EB31D6D4E1DD0213A3F12D50ADE9C637D9C1403130D8116DAC6840E442AC12476' -checksumType 'sha512'
Install-ChocolateyPath $installDir
