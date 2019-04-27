$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.3.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'E42EB62813D8F406C8328ACD1B5DFBA5BFC79A714169B375B3A608E485F25B57F559034630F0996838904FDF112A35BDA356E899476A32122C08EC90CC5980C4' -checksumType 'sha512'
Install-ChocolateyPath $installDir
