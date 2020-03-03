$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2C184E7B75D2BD126C5CF6CE726554724AE9AC6EDA07D201AB212F340BD97A283FF0AD76B7AAB1CE06806787097F25F74697EEC201E02243FAB9CEFAC582DC0C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
