$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '016698A38B573883BD49A9107CDE818C853E7240D1D31BA2A12430F9560259161E24CBD6F8D4868A6F617E9C5691BAA5A8CD45B94B96B9B96AAEFE566C3D5A00' -checksumType 'sha512'
Install-ChocolateyPath $installDir
