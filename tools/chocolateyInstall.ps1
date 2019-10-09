$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.7.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D69D16CFDF4952171534F1B2B62F5DF37A4D4CFCD74E803E328001ACAEE5ABB71559C28A9BEAF9C977E48FC2DA12C1806F7160543C84635D6AF40AC9C7FCC55E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
