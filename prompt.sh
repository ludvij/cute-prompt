user_name=
for (( i=0; i < ${#USER}; i++ )); do
	colorchar=$((87 - i))
	user_name="${user_name}\[\e[38;5;${colorchar}m\]${USER:$i:1}"
done
host_name=
for (( i=0; i < ${#HOSTNAME}; i++ )); do
	colorchar=$((225 - i))
	host_name="${host_name}\[\e[1;38;5;${colorchar}m\]${HOSTNAME:$i:1}"
done
purple="\[\e[38;5;93m\]"
blue="\[\e[38;5;111m\]"
normal="\[\e[m\]"

export PS1="${purple}[${user_name}${purple}@${normal}${host_name}${purple}]${normal} \w${purple}\n> ${normal}"
