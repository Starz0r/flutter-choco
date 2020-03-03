$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.9.1+hotfix.2-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '2355432E13703CDFBD08038416E9302B3554C7CCF520E412FB1A95BDAA8E66A568078DA2F1068CF41D52CF1BCAE3EEC0A90DC4F065F38D986EE99CEAC813F0CC' -checksumType 'sha512'
Install-ChocolateyPath $installDir
