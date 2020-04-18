$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.12.13+hotfix.8-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '84D01BF0337F12AA4EB3FD457C9E3C98116A6D105A8C56B5E4C8E0CB69CD0B5F278BA57E80676738B91C9EA2346B529E51ADEE40AB0F97FBE448CB36724A32DD' -checksumType 'sha512'
Install-ChocolateyPath $installDir
