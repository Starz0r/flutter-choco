$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.10-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4DAEAB087485EC7EF72D2492F807F50B4BAB4553FC272D49E15705CC9CAC0AE4377E931DFCF554C7AF5040243A893312ABCCED364A8E496F18D03EFD0736B883' -checksumType 'sha512'
Install-ChocolateyPath $installDir
