$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.5.4-hotfix.2-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0AA4FAFC2FE5E8EB8C1E31F2260B72E4E935CA7CB7567FF5F8250E863656BDB64E205FA222D35AED75889A11EFAD2671B089110F03D15C824E984B589090E666' -checksumType 'sha512'
Install-ChocolateyPath $installDir
