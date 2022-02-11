function Prompt 
{
	$ESC = [char]27
	$normal="$ESC[0m"
	$purple="$ESC[38;5;93m"

	# make user name kinda green
	$color = 87
	$user_name = ""
	foreach ($char in [char[]]"$([Environment]::UserName)") {
		$user_name += "$ESC[38;5;$color" + "m" + $char
		$color -= 1
	}

	# make host yellowish and bold
	$color = 225
	$host_name = ""
	foreach ($char in [char[]]"$([Environment]::MachineName.ToLower())") {
		$host_name += "$ESC[1;38;5;$color" + "m" + $char
		$color -= 1
	}

	"$purple[$user_name$purple@$host_name$purple]$normal $(Get-Location) `r`n$purple>$normal "
}
