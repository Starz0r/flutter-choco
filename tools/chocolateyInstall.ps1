$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.5.4-hotfix.1-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E6EA0FC942A1195D599E4288DC31044AA2647ED54304131EC755CC50B32EC73DA3D739213BCCBAD210735913DBE8EE024D2F22AE9377CA080156D8E2F58C4113' -checksumType 'sha512'
Install-ChocolateyPath $installDir
