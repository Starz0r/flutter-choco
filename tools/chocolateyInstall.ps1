$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '62C5511033ADDBA07435CDA04C57833FE1965E309904A76303C12EC8193CE6032C0EBA28F4AF83AB7A6F0609C12C83B0D09A1C1C1F7DFAA5F68D324542714225' -checksumType 'sha512'
Install-ChocolateyPath $installDir
