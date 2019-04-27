$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.11.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '18EE5C26761713FD858BB0016F5FEEAEE44011E1A8237468075FD2E102C6C4A507F4BFA53D4EFE67D36EFBC011422101E35D0D3409EBD0298CED2BD534C47E56' -checksumType 'sha512'
Install-ChocolateyPath $installDir
