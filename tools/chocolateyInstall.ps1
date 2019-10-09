$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.0-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3AD5AD49593CD0E2F9388BE1D87C2A0426B81FD974BE0BA9CB610C340ECC3F710BF75AFAD6D51F82DFFC08C813BF9937F0DC1CF17BAABFF1CFD3DF93634BAC72' -checksumType 'sha512'
Install-ChocolateyPath $installDir
