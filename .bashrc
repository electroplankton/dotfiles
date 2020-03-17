#!/bin/bash
. /etc/bashrc
sship="$(echo $SSH_CONNECTION|awk '{print $1}' )"
c1="\[\e[38;5;8m\]" # [] brackets
c2="\[\e[38;5;2m\]" # user
c3="\[\e[38;5;8m\]" # @
c4="\[\e[38;5;2m\]" # hostname
c5="\[\e[38;5;8m\]" # <> brackets
c6="\[\e[38;5;2m\]" # working dir
c7="\[\e[38;5;8m\]" # prompt color >
nc="\[\e[m\]"       # text color (after prompt)
pr="七"		    			# prompt 七 »
if [ $sship == "192.168.1.83" ]; then #desktop - windoo
	#export TERM=putty
	printf 'get off of windows\n'
#elif [ $sship == "192.168.1.72"  ];then #virgin ideapad (dead)
	#pr=">>"
elif [ $sship == "192.168.1.102" ];then #CHAD thinkpad T61 (not dead yet)
	export TERM="fbterm"
	pr=">> " #easier than making unicode work
elif [ $sship == "80.2.127.136" ];then #serv-2
	export TERM=putty
fi

alias rm='rm -vi'
alias cp='cp -vi'
alias mv='mv -vi'
alias tmux="tmux -2"
alias t="tmux"
alias systemctl="sudo systemctl"
alias journalctl="sudo journalctl"
alias yum="sudo dnf-3"
#dead alias clear='$([ $[$RANDOM % 10] = 0 ]) && cbeams -o || clear'

git config --global user.signingkey E31BE78E2F85ACE2

PS1="${c1}[${c2}\u${c3}@${c4}\h${c1}] ${c5}<${c6}\w${c5}>\n${c7}${pr}${nc}"

#if [ $(pwd) == "/srv/user" ];then
#	cd /srv
#fi

