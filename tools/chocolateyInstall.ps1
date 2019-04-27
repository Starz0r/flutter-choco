$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C69F3E36112477749E2E89A38E206EC5AEBAA0C80B99004A27CF065AF3AD546397028923AE65A0A754A82CA61560E0C27F44A785AFDAF743EC4164E6C9DDD161' -checksumType 'sha512'
Install-ChocolateyPath $installDir
