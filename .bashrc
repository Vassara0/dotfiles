#
# !/bin/bash
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Don't save repeated commands in the history
export HISTCONTROL="ignoredups"

#Disable ^s/^q flow control
stty -ixon
                                  
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='$ '
PS1='[\A | \u@\h \W/] '

#Alias: Directory
alias ~='cd ~ && pwd'
alias ..='cd .. && pwd'
alias ...='cd .. && cd .. && pwd'
alias ....='cd .. && cd .. && cd .. && pwd'
alias back='cd $OLDPWD'
#alias mkdir='sudo mkdir -

#Alias: Editing
alias bashrc='nano ~/.bashrc'
alias i3conf='nano ~/.config/i3/config'


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
