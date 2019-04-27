$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.3.2-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F4726A88D86CA73CCEA0362F2966F7E387E2DA5AD77719F66929B848F3BB40D081070B23092A578095D730DC21B54BBBF3C59A6A5F754A12F34A971D056092C3' -checksumType 'sha512'
Install-ChocolateyPath $installDir
