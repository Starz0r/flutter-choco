$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.9.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6B16E8391AC6999ABC7DC5EE12611407C2314D444E141A715C2095583E61620B0B66139F1AFDD6628E68CE8232063741D30618703D04B69C6B0412F42830F89C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
