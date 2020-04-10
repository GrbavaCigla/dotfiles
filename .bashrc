# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias grep="grep --color=always"
PS1='[\u@\h \W]\$ '
