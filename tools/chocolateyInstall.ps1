$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2C30D4C3C87D937C26F1269C7541FEBFA4C7DC9886DF63959C506D26580C5FCB03373EC23BEC110D21869117EB159EAA083BCCB614FD6FC8A396DEB7993BA48B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
