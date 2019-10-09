$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1873E769102899ADE01B46C1CF34494CAC3D133FDE51F7124A67B21A2AEB213FEC12CFE6AA400F710F445D645B6DFDE42E325946E68E19FA7A6EC118CAEDEC2A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
