$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.8-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FBFC3F5664D939B5E99EBBFAEA694A8C0D6E6C82901994E419516CFF09810477DAA1626771D6C7F9ED9403315988545FEB93DA5D8C9468AFDE00D61F8531513F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
