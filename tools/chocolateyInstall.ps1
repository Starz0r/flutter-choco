$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.7.8+hotfix.4-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '493B5F9E1C3BC6313B7ABECD0B2DE716D8BC39CA60E41571667EA860FB8B6FDBF2888F07D1B5AE31DB2D6163EED859AA37FA82F22FCCA1CEB0EE8669470FF55D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
