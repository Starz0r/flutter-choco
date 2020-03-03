$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.15-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '670C2B89B774008B3F5E16D55AD95465563999320489FC3452B8E27AE872F4FAFE407036F80DF1E22859B9864333FB3CB81C03E46E0E324903D0383011419A18' -checksumType 'sha512'
Install-ChocolateyPath $installDir
