$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.8.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '717038AC79E87618AC084D0F0F82EA08323F2424BCA223A71C81E4B36B5268CFC9FA29BCA533AF735061A5A5C2BAE67007843B07D2EFA7BD293B99BFEA9B0B51' -checksumType 'sha512'
Install-ChocolateyPath $installDir
