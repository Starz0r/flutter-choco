$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.4.3-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '156231D6ADA0D1A29ED579762EB9D49CE55C0FD27745CBD980686905B67CE17CF3E36FF35D72CE76568738C47A0E7D39050C2FCD4FB897F391C3CB49774998CB' -checksumType 'sha512'
Install-ChocolateyPath $installDir
