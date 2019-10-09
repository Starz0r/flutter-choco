$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '760FEAF96D2DECCB7D0BC58BB846F2E39BAB82A6748DAC51D982E0C3032643DD2D3F7189E10F4D9E357AA9E2946DA469BFE609D864FF724C0E831EF04740E369' -checksumType 'sha512'
Install-ChocolateyPath $installDir
