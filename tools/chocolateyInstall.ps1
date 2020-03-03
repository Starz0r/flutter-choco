$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.9-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B8657F4EFA6BCB1BFCA0661D2973F71B8FB82F6E3CAA8B40D7FF758F9A0ABF34ECD24A77A937874B2B5202EC6DCECC2219300BC82049083B2420D7A463964CB0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
