$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.13.6-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '56C8D0AA1199A677CA4A45F5C1B711B5EDCF8F5781E7D33AA1F702896F5CB9689568319CDEBCE1588D909A49FBC19743D98F4719359C214232036245EB2F36AD' -checksumType 'sha512'
Install-ChocolateyPath $installDir
