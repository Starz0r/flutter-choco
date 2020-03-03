$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.7.8+hotfix.4-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DC3FEA0DC59CE2EE77246D617DE3D152B857F4F6A45F75C599B0A69DDBB272391B7854BE838E5F756569FDC180ADFDD56E275ADA79B8DB8A0678B46E8B18C9AE' -checksumType 'sha512'
Install-ChocolateyPath $installDir
