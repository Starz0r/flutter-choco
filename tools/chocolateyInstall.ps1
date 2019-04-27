$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.6.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5F317A97C3CF2B59EE8ADAE88F1A5DDB4F8C97619D77082A15A1F6B8FA4B00692B2558442D586CABCF911F9F53176F675EEE83DB902F09A3F3977114575B9267' -checksumType 'sha512'
Install-ChocolateyPath $installDir
