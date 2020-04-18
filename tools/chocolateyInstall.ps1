$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.6-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B74DC500E4843294CCDBDEB80755E0108AFFF1E8C6963052F144A0E8EDBD7CD8DC90309A6B4DE53BE25B4E5146695EDF33BDBBE973CE1DB568E6A5CDF830D576' -checksumType 'sha512'
Install-ChocolateyPath $installDir
