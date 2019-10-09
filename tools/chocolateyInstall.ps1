$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.7-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F1277BEA11AE334366A1D52EF74F84046AA40CA143E77C0E38345EFEE5A21957245860214B16F14AE086B5F7D682DD1304C94B505004565218B33D963CD53B02' -checksumType 'sha512'
Install-ChocolateyPath $installDir
