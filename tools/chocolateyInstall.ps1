$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7E231915F69F597F1FB9D8DBC0BABF9D6CC64129B00AB708573780C5AA939168D6F4F6E6A604EAA4AE9EEEFFFEAE76711E40C9F0CC7C349624DC8400812157EC' -checksumType 'sha512'
Install-ChocolateyPath $installDir
