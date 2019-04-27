$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.9-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DCD7FA245F67EB594FDD5C73D41879DB0366CCF819398C9E25CF9EAAF9E7B5AED4AED28087B51CC31C322D4C2E56D7279E8C34F44CA20A6203BFF700B22D2766' -checksumType 'sha512'
Install-ChocolateyPath $installDir
