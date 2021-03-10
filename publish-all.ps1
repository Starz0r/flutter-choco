$wd = 'C:\Users\Starz0r\Desktop\Flutter Publishing'

foreach($line in Get-Content .\flutter.txt) {
	# Reset Working Tree
	Copy-Item -Path .\Repository\ -Destination .\Working\ -Recurse
	Move-Item -Path .\.git\ .\Working
	
	# Download and hash file
	wget $line
	if ($line.Contains("-stable")) {
		$version = $([IO.Path]::GetFileNameWithoutExtension($([Convert]::ToString(("$line"))).split("_")[3])).Substring(1).Replace("-hotfix", "").Replace("+hotfix", "").Replace("-stable", "").Replace("_1.", "_v1.")
	} elseif ($line.Contains("-beta")) {
		$version = $([IO.Path]::GetFileNameWithoutExtension($([Convert]::ToString(("$line"))).split("_")[3])).Substring(1).Replace("hotfix.", "hotfix").Replace("+", "-").Replace("-dev", "").Replace("_1.", "_v1.")
	} else {
		$version = $([IO.Path]::GetFileNameWithoutExtension($([Convert]::ToString(("$line"))).split("_")[3])).Substring(1).Replace("hotfix.", "hotfix").Replace("+", "-").Replace("_1.", "_v1.")
	}
	$name = $([Convert]::ToString(("$line"))).split("/")[7]
	$hash = $(checksum --type=sha512 $('.\' + $name))
	Remove-Item -Path $('.\' + $name)
	
	# Find & Replace on templates
	$file = [IO.File]::ReadAllText($($wd + '\Working\flutter.nuspec'))
	$file = $file.Replace('{version}', "$version")
	Set-Content -Encoding utf8 '.\Working\flutter.nuspec' $file
	
	$file2 = [IO.File]::ReadAllText($($wd + '\Working\tools\chocolateyInstall.ps1'))
	$file2 = $file2.Replace("{url}", "$line")
	$file2 = $file2.Replace("{hash}", "$hash")
	Set-Content -Encoding utf8 '.\Working\tools\chocolateyInstall.ps1' $file2
	
	# Commit and Push changes
	cd .\Working\
	git add ".\flutter.nuspec" ".\tools\chocolateyInstall.ps1"
	git commit --message="Bump to version $version"
	git push origin
	
	# Package software
	Move-Item -Path .\.git -Destination ..\.git
	choco pack --out=..
	cd ..
	
	# Cleanup
	Remove-Item -Path .\Working -Recurse -Force
}

echo $("Finished. All releases pushed!")