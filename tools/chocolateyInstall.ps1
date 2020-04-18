$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_1.17.0-dev.3.1-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9DC7ABD95217B4C6D91B20101AA850C4323D10F5BAB5347AEBFC0C1DE5FA465ED6BB01603DF3C399822031D24AEA5439A5A52821984F83ECAAACF023DAE078F3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
