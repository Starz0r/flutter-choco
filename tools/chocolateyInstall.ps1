$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.10-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9C1D7CD07DBF84ECD6315DF8CE61A9246A8150DA2A311EC4E9D6211613C0D67A65CB01FD166CF362DB8DA9BA3362776B9A085400D3ED6B069CC97888495365A6' -checksumType 'sha512'
Install-ChocolateyPath $installDir
