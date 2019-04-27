$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.16-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'FFA8AA44CE06969D621E72F0047AB79B60BBD7D9E8E577EBD85FB22E57A5E0ED87AB29FCA57BADAD82D3ACCBFE4603EB2EDEA5A59A4989684F52587C85A14900' -checksumType 'sha512'
Install-ChocolateyPath $installDir
