$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.3-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '833E61E68FF331B71060D28CABF3828731F0F49D429547CF2D4654D146A95171A06D72CD67AF809318547BCAC1BE5C96FFE4B58476BF636EE56F2CBFDE8E006D' -checksumType 'sha512'
Install-ChocolateyPath $installDir
