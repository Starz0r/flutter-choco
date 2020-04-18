$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.16.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A7921929F168817FC9BB765FBC637B2550E28D5CA0F24395EF1EA79006B2F57D7F7C42DF64336A64A588FCDEE3A29A6404858D30C2BAE1DC846F7BC10DF6FD57' -checksumType 'sha512'
Install-ChocolateyPath $installDir
