$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.10-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'CA27DF767A0A048A010E11CDE87FB03FB002BDC8F13B41229CEA85E9904A468514FFB432D918CB8331867CE27106F8A83462C8AD387C0DB40D8B046A108FDC4B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
