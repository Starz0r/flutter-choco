$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '595E758039DA40CBDC9A958352FFCB953739B64831D714208CCF9BBF490FAF33F8D8B609CDCBA80E45FE5EC4175B4A2D3EC40BA7F77280FD3F710D4D4AFFCA4C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
