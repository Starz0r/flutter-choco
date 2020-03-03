$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.16-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1AC28C1DFFBE7B6E04070CCC4A1A63687C5D71B03EA074C71DDE5E3B9E9CA0B9BA71F7775F15D62CF439171EA7DAD26F1235F03D7D6486EE406AD65A35082780' -checksumType 'sha512'
Install-ChocolateyPath $installDir
