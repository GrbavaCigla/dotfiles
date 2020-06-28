# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa'
alias grep="grep --color=always"
alias w3m="w3m https://duckduckgo.org"

export $(dbus-launch)
PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#if [ -f ~/.bash_prompt ]; then
#    . ~/.bash_prompt
#fi

export GOPATH=$HOME/.go
PATH=$PATH:/home/cigla/.local/bin:/home/cigla/.go/bin
