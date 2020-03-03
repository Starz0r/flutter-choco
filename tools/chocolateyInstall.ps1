$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '85680C1D2905BDC8F9E64C2BFC4171BB489E4D2BC81F8C9AB9A7D05BDF13EDA4FDC8F7D5BBB135F2F9675DA3B806C85A07E0F5DA18D4F2B84D99BCE027DBC35A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
