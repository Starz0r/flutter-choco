$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.8-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'ABC5C770848143D6CCAEA3F9C6D4C0DCB83A5F72B9FA9DC7A4B3E6E189BF79313F371D8536282EDC7BF26692C9E339A84FB9A921FD0FCB24727DAAC222AF0A2D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
