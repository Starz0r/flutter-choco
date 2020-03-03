$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/stable/windows/flutter_windows_v1.12.13+hotfix.5-stable.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'B5A5F29D8AC3B47257BA4B9F0B6429DD8FBCD5FF712B91BD2807CE17A1BE43B4AE67C264894F861773975C1EA71DDF2DDD64C8F2094580C52834FDEAD65D8B6E' -checksumType 'sha512'
Install-ChocolateyPath $installDir
