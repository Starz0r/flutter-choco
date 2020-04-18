$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '565024AE8061E3DA0A6EE5F297C4433CC20EE3B5298EBE3E58505D696B01CBAA27C37B05FCF7B53B47EBF356FFCF7A0B70D752F325E7316786DBFD82A1BF68C9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
