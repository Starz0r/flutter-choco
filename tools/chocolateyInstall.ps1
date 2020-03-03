$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.12-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'BB224192966C5C066D866C7707A641117BE35CF5DDCD3725AC6FCCA6527EF042F4220F1CF8ACE7A69E388F8A11C6C1C7FC74080F52E00902EF522136DA2B38D4' -checksumType 'sha512'
Install-ChocolateyPath $installDir
