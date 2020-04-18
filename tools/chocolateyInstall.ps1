$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.15.18-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum '6FB6E9171812248CA97FC53975BF7B61F553FF98B66FA2CE929D2211B081D2C1C7BB4072B7ADD8EF57722343BF3649ED970D91B8AF77778DB5617B59A9CC8178' -checksumType 'sha512'
Install-ChocolateyPath $installDir
