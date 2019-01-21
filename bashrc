# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
alias ls='ls --color=auto'
alias ll='ls -hal'
alias la='ls -a'
alias pp='ps -eo pid,pcpu,pmem,comm,args --sort +pcpu'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'


# Put your fun stuff here.
VISUAL=/usr/bin/vim; export VISUAL EDITOR=/usr/bin/vim; export EDITOR

export PS1=$"┌\[\e[34m\][\u]\[\e[m\]\[\e[35m\][\w]\[\e[m\]\n└> "
