$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.9.1+hotfix.3-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2EA576560D7A6A7C2B1CD184F26B012EE7657C489700815A55FABFB272E8E73234A1554DFDCD5D6D7C90F948515798286330CD48746383EE0D74BDAF728E8BCD' -checksumType 'sha512'
Install-ChocolateyPath $installDir
