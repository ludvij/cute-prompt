function Prompt 
{
	$c:ESC = [char]27
	$c:normal="$c:ESC[0m"
	$c:purple="$c:ESC[38;5;93m"

	# make user name kinda green
	$c:color = 87
	$user_name = ""
	foreach ($char in [char[]]"$([Environment]::UserName)") {
		$user_name += "$c:ESC[38;5;$c:color" + "m" + $char
		$c:color -= 1
	}

	# make host yellowish and bold
	$c:color = 225
	$host_name = ""
	foreach ($char in [char[]]"$([Environment]::MachineName.ToLower())") {
		$host_name += "$c:ESC[1;38;5;$c:color" + "m" + $char
		$c:color -= 1
	}

	"$c:purple[$user_name$c:purple@$host_name$c:purple]$c:normal $(Get-Location) `r`n$c:purple>$c:normal "
}
