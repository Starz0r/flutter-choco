$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.1-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7E96FD69EBD09F9DA9E93DC4D767E219B7635065302932B1671DB25FCCD6AE49C3EEAE6CA55BBFA2C3D144EC2A85C2E800EE21E6E50BEA48F743513C72F29E79' -checksumType 'sha512'
Install-ChocolateyPath $installDir
