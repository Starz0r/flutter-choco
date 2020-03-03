$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.12.13+hotfix.7-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F1DBAE86349B893E9EFC1B1D36FFAB5589326B329BD816E8155435A18A3552CC8682A3D515E649EABD7E02D879FE7E50F5C7398D46B2F71C48693511E5706369' -checksumType 'sha512'
Install-ChocolateyPath $installDir
