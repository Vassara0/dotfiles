#
# !/bin/bash
#
#

#Fastfetch on terminal boot
if [ -f /usr/bin/fastfetch ]; then
	fastfetch
fi

# Enable bash programmable completion features in interactive shells
#if [ -f /usr/share/bash-completion/bash_completion ]; then
#	. /usr/share/bash-completion/bash_completion
#elif [ -f /etc/bash_completion ]; then
#	. /etc/bash_completion
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable the bell
if [[ $iatest -gt 0 ]]; then bind "set bell-style visible"; fi

# Expand the history size
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T" # add timestamp to history

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend

#Disable ^s/^q flow control
stty -ixon

# To have colors for ls and all grep commands such as grep, egrep and zgrep
#export CLICOLOR=1
#export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
#export GREP_OPTIONS='--color=auto' #deprecated
                                  
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='$ '
PS1='[\A | \u@\h \W/] '

#Alias: Terminal


#Alias: Directory
alias ~='cd ~ && pwd'
alias ..='cd .. && pwd'
alias ...='cd .. && cd .. && pwd'
alias ....='cd .. && cd .. && cd .. && pwd'
alias back='cd $OLDPWD'
alias mkdir='sudo mkdir -p'

#Alias: Reboot
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'

#Alias: Editing
alias bashrc='vim ~/.bashrc'
alias i3conf='vim ~/.config/i3/config'

#Alias: Calendar
alias jan='cal jan'
alias feb='cal feb'
alias mar='cal mar'
alias apr='cal apr'
alias may='cal may'
alias jun='cal jun'
alias jul='cal jul'
alias aug='cal aug'
alias sep='cal sep'
alias oct='cal oct'
alias nov='cal nov'
alias dec='cal dec'

# Color for manpages in less makes manpages a little easier to read
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;31m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[01;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'







