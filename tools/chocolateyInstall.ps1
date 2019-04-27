$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9FB2E6182D8EA606203ADBAEC1E63C56D71982927AF5AEF2F042042EFBA9BDB5684435F589E8EDC833B9729122FF0EA5C517C38133757BAB80E8609F27D3FF9B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
