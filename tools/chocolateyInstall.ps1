$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.9.1+hotfix.1-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'A1E67B98869582AF1E41E9126F45017221A1C8EE4B8BF32D0915AC55807CB22A310D4FF826E6C5C46B22BE8AF87C24C8F85EF2D49E79D306292AD68136808977' -checksumType 'sha512'
Install-ChocolateyPath $installDir
