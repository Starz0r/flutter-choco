$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.12-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '31993BA22034777046F3C6CA2CF1111046E264076C0BF211751E79EC8A25A2EE0CD153BB0A5A23C9F8CFC9DC66084B2EA35C86225271274579284817B7D29B27' -checksumType 'sha512'
Install-ChocolateyPath $installDir
