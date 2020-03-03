$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.14.6-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'C7B9D5DC17FCE5230BE9B48A70BBBFB01F13DC314BAAC8AA0BC89A3848BC30D3AEF4AE6E0F1564B97E207FADB18CF8F069BA8D4A92433CCEC0E50B96863C045C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
