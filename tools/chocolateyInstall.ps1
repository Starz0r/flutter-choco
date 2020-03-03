$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.9.1+hotfix.4-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '47F6C15F8C97ADCBC679BF8B982A2AFE64DECC6DE1F81390551AEC88A40269B293563BC451B3F3D1D425C6C8BF132F9AFD8184BCAF03988EE84C2AC932F9BBA6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
