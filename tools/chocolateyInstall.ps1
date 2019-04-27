$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.18-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6FE5EF533C1EDB8F58780A15C0A25E314B4EDF1A97F759834E8D1B6BEEA7A07F6C20331FC91A79D3AB89F6F9387B0CBE2988B9BADB9057B6F743BD4830426236' -checksumType 'sha512'
Install-ChocolateyPath $installDir
