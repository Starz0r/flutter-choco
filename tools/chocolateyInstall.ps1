$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.14.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B6B4A79B80B715EB6630BB67E408FC2109C279886D5EAC9E7EA3018471E2CEA4292F213C70524C97DDC208949C9D50CD506349EED73EC673791FFEEDE77721B0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
