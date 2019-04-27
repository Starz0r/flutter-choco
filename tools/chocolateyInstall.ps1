$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.8-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '303B8A8BB0AF2B4517F95AF262949B5FD39880518029DF6427095CD86BEBD754FA3506DDE3BAF95EC1C1F3E5C8D4CC9ACFEEE20A04ECC8FC0258B8335949C16B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
