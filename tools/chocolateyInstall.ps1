$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '75F1F2428B3132FB573C341CDF2137D44D2EB13AE1DABA0747BF1CE8A4472581F2326DF530F6C7CC0231DB48AB240B6141DECE54F95AD91AF792EE9B3FB13B27' -checksumType 'sha512'
Install-ChocolateyPath $installDir
