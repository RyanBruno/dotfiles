#!/usr/bin/env bash
stty -ixon # Disable ctrl-s and ctrl-q.
HISTSIZE= HISTFILESIZE= # Infinite history.

# Set the prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Enable vim mode
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mkdir="mkdir -pv" \
    p="sudo pacman" \
    SS="sudo systemctl" \
    ls="ls -hN --color=auto --group-directories-first" \
    YT="youtube-viewer" \
    la="ls -al" \
    ll="ls -l"
