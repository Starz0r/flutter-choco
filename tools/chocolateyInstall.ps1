$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.8.3-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F3BDDF492A7BB0EA494F7DC7BDDE6CC6E716B095EFC05CEB83A15320996DDB1A4DA5D9B76A412A43BB9DD517271A7D2422F971FBA48A958DB47CE019F502B658' -checksumType 'sha512'
Install-ChocolateyPath $installDir
