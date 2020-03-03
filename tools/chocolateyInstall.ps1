$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E68DF6AF1B4F7B4754981C55336C69399C96EC538284E6E0B15E5EECA0339F01CE67F134F2C90AEBFCDAD22C791E7B82782A0F79A6B5199ACB91B1E57BEE7C1C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
