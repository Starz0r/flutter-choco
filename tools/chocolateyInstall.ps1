$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.13-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '856927872DC73AB3978FBB70F87332A39E8319783E54AD3DDEF811E08518F090500838B1FACF922C3BCE840A585F54ADC0488381B7BA834084CD616BA2D6EE1B' -checksumType 'sha512'
Install-ChocolateyPath $installDir
