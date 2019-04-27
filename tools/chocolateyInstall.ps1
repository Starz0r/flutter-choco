$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.1.8-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C2A4B2F2C8669061276D85412F338F523BCE6EA59B278A12CC77783F79C1C9C0836DA5CAD597A38057719CFE088504D4D51AD29F0631498343B2623EA2F37451' -checksumType 'sha512'
Install-ChocolateyPath $installDir
