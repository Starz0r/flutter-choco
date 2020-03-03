$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.13.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C76A3F2A226CF9DD9CE4D622B4687CD2C85F92500448123859508AC4763C3C511982CC0D3664489E55B64307B82A412C3B8D349FEFF82E405E6B5C3BC78C9C59' -checksumType 'sha512'
Install-ChocolateyPath $installDir
