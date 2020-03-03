$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4A34724554FF8D08120034776ACF0F96AC34BC5D985A3E64B9EDDF28D5C3F15D7AF21E8CD8DA64CC615F449143AF5ED92A2565E4085B0BF5297A9A4F99BA3151' -checksumType 'sha512'
Install-ChocolateyPath $installDir
