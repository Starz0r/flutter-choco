$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.16-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EB91E6CCEEECAEC999798F40C98FC411565B8522E9819C1C84E3DBC3E0C5F5B79469B923C3E30760A9AAF6D41BE39523C377B082A609877745A6C2ED983BE93C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
