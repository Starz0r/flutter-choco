$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.21-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '722587040680C83CC780E9BA9D5CB561EB51F5651F6F865470F074EB494881D70686337DF8793E5AEC65F7D4891AB50891BD845F89730692BC6CB0458E3EDE9F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
