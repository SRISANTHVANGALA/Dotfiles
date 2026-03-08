#
# ~/.bashrc
#
fastfetch --logo /home/sri/Pictures/skull.png
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Created by `pipx` on 2026-01-30 09:48:34
export PATH="$PATH:/home/sri/.local/bin"
