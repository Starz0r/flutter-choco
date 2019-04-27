$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v0.5.7-dev.zip'
$installDir = Join-Path $env:ChocolateyToolsLocation "flutter"

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '7EDEA490B62D9A88F83C0E8D05AE99B809FE560E13362BFE50181592842D80F32709A62DEFC41936DA6D3E033BA38CD85910B9222080C077F5CBAC03C71A650C' -checksumType 'sha512'
Install-ChocolateyPath $installDir
