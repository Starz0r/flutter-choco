$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.5.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '17AD070922A70C4A4321E0FD105943F837633AE19E587D797510BDBDD19F282E85D9BA246650344AE3F11EDD132B26263BD125037AA330226F8C6D92FC69E76F' -checksumType 'sha512'
Install-ChocolateyPath $installDir
