$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.16.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '149E82144B92469744ABB79E39925EFE0A4F4714A47A3D780D762B78C73FB519229D05F69B35AC788F6DF7F47A0FE641CF5AE0E7D8631355BB4DBD341E07C623' -checksumType 'sha512'
Install-ChocolateyPath $installDir
