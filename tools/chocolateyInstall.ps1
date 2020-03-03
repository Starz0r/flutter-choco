$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.4-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '85E4BEC431F5F621EA57F7778CBD5FBECE1F70EE915252C3B2286DAD4166DD619955F90A1A8CAB3FE3723E3E225A80892496A7C1E566A00B6BD58A40AB514A4E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
