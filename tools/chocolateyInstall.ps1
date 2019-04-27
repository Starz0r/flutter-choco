$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F4A46C69AAD7BD65D43F89362B3C0AB58DA1E2D98FF7A830E82C1773267E72AD919140158289F7B49991B4787659E36D2AF49341F77EE0E13695EB5FF532FBD3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
