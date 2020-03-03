$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '755CEDFC50909173115553C63E96B1F7BD8BDF3275A6BB85EE2E61A10A12129866A7456CB4FFEC7F6C67E4F17E087CDFA6258A58071B5D815CE4646E790CC5A7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
