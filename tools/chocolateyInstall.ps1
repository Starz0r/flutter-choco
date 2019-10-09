$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DA4EC7736F3572364816E942852E79A188FC8FEF4BE2D46E2F021E6BC11E7E779D9BD7843897BAD89B4676C926B5FED211476C5C6D3F94F0A0DC3CA10EA75307' -checksumType 'sha512'
Install-ChocolateyPath $installDir
