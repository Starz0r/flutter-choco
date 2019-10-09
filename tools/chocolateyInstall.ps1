$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.10.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'F75C4B09F0427E8EF90895157CA9DC99CD6C160E4FFCC9C8CAA32597D87374D5FE8AE0EEF9C9C3B40F3D9F7A2D56F7559A0C367C42179FAAB3B32FA17D69001A' -checksumType 'sha512'
Install-ChocolateyPath $installDir
