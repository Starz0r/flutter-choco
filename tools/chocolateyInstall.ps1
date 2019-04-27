$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/beta/windows/flutter_windows_v0.9.4-beta.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '5412078C9F60EE7BA8A63C4A832914347C923E59E8660C33BF7D75502FFE547D0C6839FD0CB0A80C2E7308D94C57D643287C2DFC7036F5CD1F169247D2C544BC' -checksumType 'sha512'
Install-ChocolateyPath $installDir
