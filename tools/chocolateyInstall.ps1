$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.15.17-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '4927F3722FEDC92BC3116063C3ECE9BD8DEC77944860C57C38A4E835EB899BAEC73C592761A56E0B9412B4B851868C3E736895B2AEA8C65920C31537B42515B9' -checksumType 'sha512'
Install-ChocolateyPath $installDir
