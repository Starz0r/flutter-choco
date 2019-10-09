$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '976B284D9D703F674B972CF427730C87ACAB0811AA506337ED591409E860DE3DF2D4D0AF3D1A00EBDF3A3CF090C2783DDCC788840A7E8BDFEC64172E88D6371D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
