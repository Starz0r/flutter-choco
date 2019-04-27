$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.11.11-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1329B1B83862CD18FED8A03F7D8C472C338A78E1A0133068A11B17D78866059FD74810782F574CA1E04911CF4AFA5B44E3C0D68471E9C1D1345471C5F01DDD51' -checksumType 'sha512'
Install-ChocolateyPath $installDir
