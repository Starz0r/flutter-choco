$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.14-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '83C72F550BB588B47454801B7F5F316996F0F168CA698A8A31CC962C15A70470597E009CD4735811ACFD26808C5157A5F4D4FA6C428816A0C697D66B4F7795EF' -checksumType 'sha512'
Install-ChocolateyPath $installDir
