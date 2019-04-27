$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EADDAA9E71764C60115B9B08829B1501200A5CF35ED7EC6E7B8697C362F272423A61E08E598E13ED4B4A05F14A736FB32C5B47548A4A4B7C0C3F42D6B49FFA83' -checksumType 'sha512'
Install-ChocolateyPath $installDir
