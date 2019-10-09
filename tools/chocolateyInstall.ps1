$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0916B2775A8AE1F2807ADAD9D64F97796353758A6B58A081867047188F1AE1AFC5BEF7C029A579BC40C11679FC8039B55BAAB64CA5F1ED5DA42BC4C0D8938B61' -checksumType 'sha512'
Install-ChocolateyPath $installDir
