$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.2.1-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '441C5655BD336BF1D5B571E04EC074BB50A04A60EF078898AA5DE95A5412C89399703A9E59B16076DDA94828A325515B1B2A9C7A085B1B00CD9C542E16B1F935' -checksumType 'sha512'
Install-ChocolateyPath $installDir
