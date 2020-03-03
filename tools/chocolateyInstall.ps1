$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.1-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '3A5CCE9AE1E60493B92083652A12A161BF8A74AFB35A464EC30B33063874D2AE8AF5F0873FEE55EB549722B3A9EAD10C66B91A62B01D338B40D0D2A96BE7F155' -checksumType 'sha512'
Install-ChocolateyPath $installDir
