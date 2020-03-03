$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.13-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '8249CF87164134EB33123FB191E5DD333BC8A6659126205029667A64021FA5D62EEDC7280B3140044B4494F834B16C941F67F3CAE8C077D1E1558E1D8CD6320C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
