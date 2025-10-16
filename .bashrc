#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fuck='sudo !!'
alias vim='nvim'
alias cd='z'
PS1='[\u@\h \W]\$ '
eval "$(zoxide init bash)"
