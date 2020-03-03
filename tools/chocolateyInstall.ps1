$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.9.1+hotfix.4-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '12A3AA1E26FC2312338962F0678D360D75A1AD43B34689CBB476FD0F5F08630AFF33AAE074FF419DEE79F60B43E385DE64FF821DF64E0032A4A6DA2086D72412' -checksumType 'sha512'
Install-ChocolateyPath $installDir
