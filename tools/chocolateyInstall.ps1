$ErrorActionPreference = 'Stop';
$ToolsPath             = Split-Path -Parent $MyInvocation.MyCommand.Definition
$url                   = 'https://storage.googleapis.com/flutter_infra/releases/dev/windows/flutter_windows_v1.12.15-dev.zip'
$installDir            = $env:ChocolateyToolsLocation # Dangerous but appending -SpecificFolder to Install-ChocolateyZipPackage doesn't work

Install-ChocolateyZipPackage $env:ChocolateyPackageName $url $installDir -checksum 'D14293DBE05F6E1C423F3BE28793B3AF708ADCC91C68C3ACC90674B5D02739E34E42E35C9503827DD06716F409EC9393E08375D3F97B3A61976CA01187973EC7' -checksumType 'sha512'
Install-ChocolateyPath $installDir
