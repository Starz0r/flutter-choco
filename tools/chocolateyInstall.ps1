$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '56597377E8DD9D13D9A39BA49A48C1FA92E72ECD7FF336D1C349D79384C640F03B9438BB70980E5C48402FC1A1465F91699D1775DDE0022F9080AC9DD27F8445' -checksumType 'sha512'
Install-ChocolateyPath $installDir
