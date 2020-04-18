$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.20-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '76BE99EB7282DA509B6AD5561E5CABA0DB41334DDDFDDFE32F77EDE9398E325EF03D5E0AA5945A42B2F046DE007C3D117E1AF961468CB5A70B98163EB3126C66' -checksumType 'sha512'
Install-ChocolateyPath $installDir
