$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.8.2-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '264481669073D43FF14411C135B35908B1B2D56EE3E9523C088582075AD9FA35F630860A46E2225BDF7A1591A41E97B386D9F87CF18532FE6D86975C3D5DFA81' -checksumType 'sha512'
Install-ChocolateyPath $installDir
