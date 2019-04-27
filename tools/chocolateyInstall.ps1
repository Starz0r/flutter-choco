$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.4.4-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '96BE3E0FA3AF398157A942BD08674D5E0C402ADE79EF856976AA9478CB9FCF79E5319E92A3F5D9CFF8F034581297163665021CF6A46D96D42359414F852ACB4A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
