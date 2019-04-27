$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.1.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F6A1103A203E42C7CA8425064E2F40D47EB3C51A5DF5F655BA6602CDE6599D09A9AD2F0137CDBFBC880FBA116B45C8AA8ACDD6DDB356FA41C2BE7BD87CB8B952' -checksumType 'sha512'
Install-ChocolateyPath $installDir
