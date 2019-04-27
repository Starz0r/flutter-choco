$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.11-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '56B9947A2B859B52A4031EC3D61EC9FCEC3641D51FF482BC8743806D1A942442576E0DBB8F1E4F6AD8D735C3CBBBCD197B0866E160AAE7A03FBD5E156F9D1F8A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
