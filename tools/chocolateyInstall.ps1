$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.7.8+hotfix.2-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'DDED3AB45ECE8870DD1A50792489F6C7658E5D2855CF934FBF75906197B0D7FA4D0CE655C62D41A407CB8F0BDAE4AFB08D090F2375AF68C97E64DE5CDC7120BB' -checksumType 'sha512'
Install-ChocolateyPath $installDir
