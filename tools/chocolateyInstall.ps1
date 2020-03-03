$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.7.8+hotfix.2-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '93D5C39441CDA9E98D2DA8902705FCE3319AF437A378641B304D8E91D30636FCB2C78C96467EE0AA84729AB9FB1E853C153EFDE3D7316F9C826973E624FE907C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
