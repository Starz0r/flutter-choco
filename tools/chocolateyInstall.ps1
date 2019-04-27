$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.1.9-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FFD7FFE2C0B868B0E4B6ABA4EC2FDDD700CCC889C7BC15AE1CAE679ABE9C25C35D2581687F325A27F048A2F8D3449167876CA882BBC91AC7DE9BA8F23594CCDF' -checksumType 'sha512'
Install-ChocolateyPath $installDir
