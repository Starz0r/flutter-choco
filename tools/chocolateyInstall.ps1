$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.2-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0BF7C380B6AAE7FEAA46F46E1C0D84673C589B194B59C66D015113CEEB906F603265D892F6F2ED6FB659FE434DE25D04A2965F9627B026048C649AFD1C0EF0E0' -checksumType 'sha512'
Install-ChocolateyPath $installDir
