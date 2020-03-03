$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.11-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '92C146CE5DCD94DDE262D1C13C0044EFFEB8281663596F7A23D07EE82AC1AD03FDB72C849D6E43B017DD37DF3F873822A2AD7C9B310B2CB3C2DAA982A344127F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
