$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.13-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9D3CBE70D17270860AA215F51F7D692392C2891B95D07398EC66489B58D0A0DF19A20D629AF9F3127889248630DABAA8D8679CDC49A7CC998656C2E0D9A254F7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
