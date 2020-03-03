$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.6-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0024A56287CBA700F65605E112E7A86A776CEC97C4D852F9D409632D04B3E8DC2BAE8B466D4A8F618628F39C6D630472269ACC25F411B9771A1A30A5188F966F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
