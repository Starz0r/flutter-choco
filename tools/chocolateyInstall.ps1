$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.3-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9E7E577661C594D0FE74CD513A21CE73CDA7EDEDB1C915C0E8870939B33F45890C23AAD1333FF9EE558F6FB5B5980E601B30C2EB00DF102FB407CEFFF76ADCE5' -checksumType 'sha512'
Install-ChocolateyPath $installDir
