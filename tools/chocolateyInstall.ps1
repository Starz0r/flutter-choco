$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.1.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5A6945271BC6D5E5F2E06FA64147BEE688233C872BC8D6169267FE71085B92D884F4470D85A74349FBCB82AC8D556D5B50B5CF16FC156D433D950B422040F5B6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
