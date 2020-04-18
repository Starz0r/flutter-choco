$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.22-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4D9DAB126B2A34FE609D9ABB98FF0424D5E5F9B5AA3C3FFB82BD62A4F66A1DEA78DEE6EDF207C4493C8730BA10450FEA2F2B1B9825024558654BDAA7AE9DBE58' -checksumType 'sha512'
Install-ChocolateyPath $installDir
