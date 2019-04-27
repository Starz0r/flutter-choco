$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.7.0-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '9C153AA4A38101CAAFF3C37813CF16A7D3C7C28D149E381E20301EACC75A93922506B7A624E57DA699B401BB96B3D2432330FB87694F7B4D38BF8E92B410E252' -checksumType 'sha512'
Install-ChocolateyPath $installDir
