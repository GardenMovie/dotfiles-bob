#
# ~/.bashrc
#

export EDITOR=nvim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias config='nvim $HOME/.config/hypr/hyprland.conf'
alias grep='grep --color=auto'
alias fuck='sudo !!'
alias vim='nvim'
alias secondBrain='xdg-open "obsidian://open?vault=vaults-secondBrain" & disown & exit'
alias ufabcArch='xdg-open "obsidian://open?vault=vaults-archiveUfabc" & disown & exit'
alias ufabc='xdg-open "obsidian://open?vault=vaults-ufabc20261" & disown & exit'
alias movies='sleep 0.5; hyprctl dispatch dpms off DP-3'

PS1='\w -> '
alias cd='z'
eval "$(zoxide init bash)"

