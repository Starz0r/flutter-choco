$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5E41CE55B7086A30AD1D30A886EF1F9C4F8D0FC072A7872D00F56601D30594AEB24CEE37BD3ADDDE4673876A6CA2A98E11C2F5F58CFB4F6C302890EF7AC6D608' -checksumType 'sha512'
Install-ChocolateyPath $installDir
