$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v1.7.8+hotfix.3-beta.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0C31F99727FCB6116094B9562E55CD44F019B43285FF82FEB7915C611CB5C3DC86368CB3B3B44B6FBCB89B233F8BD7BB29919080B43B6C373839448402E0719B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
