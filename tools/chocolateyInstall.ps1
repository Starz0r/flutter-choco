$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.9.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5EFC6580A7635ACBB3A28961EAE39296A692666C969CFD5097984EC04B457F6245697200CED01ACC2032B9C4BA7AF497DB09507AA1FCC234FECA44B2189E584A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
