#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias config='nvim $HOME/.config/hypr/hyprland.conf'
alias grep='grep --color=auto'
alias fuck='sudo !!'
alias vim='nvim'
alias cd='z'

PS1='\w -> '
eval "$(zoxide init bash)"

