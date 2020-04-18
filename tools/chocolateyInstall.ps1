$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.5-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'EEAE72E9AA7F42B294BE6230C5F1E5A116D4727FB9E766F991ABBC9E8D5BE765CF9A555FB0FD68B7092BAAE0364BE0594F6954B5D7A95748B4B17256815BEEB7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
