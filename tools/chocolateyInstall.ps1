$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.3.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '0E44CE3A1905E322BA113BDE8E0D10F5569418418E748F5BC2E53E8D2DB006A7873384C023F8C73B592F515642985681F462C346540AD7F24BFF7943CC3C5F88' -checksumType 'sha512'
Install-ChocolateyPath $installDir
