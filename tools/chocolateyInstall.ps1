$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.14-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3527A734C5FA832A50968E04CE07511BEF9A515B59B002960DD9FF13467200C5A37F6AB35BEF0328AB651C52B6B626E2D0E30B574E6B7236B8B22A894EE369BA' -checksumType 'sha512'
Install-ChocolateyPath $installDir
