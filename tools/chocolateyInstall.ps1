$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.7.3-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5ACC3269BD46E10D8CCC53183D7D2596778C3CBDDD00DA66607EF739C2E472D27B3F98A44F89B9258EEEB67958D56CD2CC2B28EF7DB2145A6A1E3D5C45FE6F4A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
