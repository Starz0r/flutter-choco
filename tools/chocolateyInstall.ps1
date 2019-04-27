$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.8.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A5C20FF9A3B3FBA8B3C4A67B16AF5EECB079A8B853F6E51AE58A3E5C5FBAE96E3F340EA3058AE076B6540F090100B737FC035AD0C2072E5C697AA45573557D3B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
