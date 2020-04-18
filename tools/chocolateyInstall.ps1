$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.13-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E1EF0D58F3E405C49861E62D510273F119730E95EF8816B6F4A75CA40D7A46C782C009A65E981F3ED708E4FFD684A701D01DDEB8E82C959A290300AA348BD8CD' -checksumType 'sha512'
Install-ChocolateyPath $installDir
