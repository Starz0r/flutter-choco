$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EEA5A66167946B6DF53F48B98932FD7C43FF961DEF6281B6F6E39EADB5B6B8C9197552E112D37AB303F3DD1FCD42F4ECDE929058BDF5F22E80D6C32387E88866' -checksumType 'sha512'
Install-ChocolateyPath $installDir
