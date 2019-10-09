$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.6.1-dev.zip'
$installDir            = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F899FBA317A6DEBB8CF44510166DDCC9E1E6E0D4679260AE921AE0BAB981ADE0D448E7CBDAFBE35CF61C95C5498250F9E145C56D33DD1BA360C76EA9B19A4506' -checksumType 'sha512' -SpecificFolder 'flutter'
Install-ChocolateyPath $installDir
