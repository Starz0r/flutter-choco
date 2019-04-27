$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.6-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3D85BB008CDB17E8643319C253F16E60B94287F5B8B54F448421FF36D5ACFD207D4CA58BCB927645538B2E7993C01DF6BB1E4513ABC57571F220EEA7F1C90F4E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
