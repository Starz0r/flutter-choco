$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9BEB8631E8E32DB39F284275B463F3F00972E06D97984F63035EC675A4C803213168177EE74D932AFF1A372CFBCE4F47318E5334F9EB91DE6CE9E01A599C4705' -checksumType 'sha512'
Install-ChocolateyPath $installDir
