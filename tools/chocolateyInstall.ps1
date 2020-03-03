$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.11.0-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '811E6C945EAF38C5777BA4F29FFA839F582E527AA3B9647A84846C62B9E5C111364AF3B2410BDC28F69BB26E96044C684738B1712458D99E7F46E1E8D30D7164' -checksumType 'sha512'
Install-ChocolateyPath $installDir
