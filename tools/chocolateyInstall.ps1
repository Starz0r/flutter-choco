$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.8-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EF3A93C77CC31A52C6E584666FD11B7DB1B952020BF3164AE64A63F7166F81CE013401F41F3CA36C785D3197668EBE0E95F8BC8B4D95CC25C3DE79D832679F78' -checksumType 'sha512'
Install-ChocolateyPath $installDir
