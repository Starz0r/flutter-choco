$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.2.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CDF406B9274AF9FCECAD830D906F6136E0778AA2F0E5EB20AC11B118955D5677A034ED165D5EF819DF7B8BAB2E55096569DE736D9BD4DE472CDA57EB438AF73C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
