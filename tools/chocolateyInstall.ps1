$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.4.2-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '1C27F2F9FC06BE005E0034504D1948D1ECE34A0C214FE13522E2563209EC15CC0ABACD61C291BFF8B7A0FA9A1FBF90AF7D304FA6006AA4A664E60E1C501C7206' -checksumType 'sha512'
Install-ChocolateyPath $installDir
