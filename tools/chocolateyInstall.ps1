$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.12.13+hotfix.2-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '321C11EFEC8325EB8AEA5C0229B4A0AD6DDB39E14D3B9BC9895EFCBAFFE3E961E8B7FD35F65B19060DBA25EDB64F565255977CF9416DED7437A8908E21254977' -checksumType 'sha512'
Install-ChocolateyPath $installDir
