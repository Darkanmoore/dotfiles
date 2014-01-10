zstyle :compinstall filename '/home/simone/.zshrc'
autoload -Uz compinit zcalc
compinit
zstyle ':completion:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' file-sort modification reverse
autoload -U colors && colors
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=31=36"

setopt VI
setopt NO_BEEP
setopt correctall

export TERM=xterm-256color
export EDITOR=vim
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=setting'
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' 

# Bindkey for Fn in zsh shell

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char

# ZSH Options

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=200

# How prompt is shown on term-emulators

PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[cyan]%}%1~ %{$reset_color%}%# "
RPROMPT="[%{$fg[green]%}%*%{$reset_color%}][%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# Some usefull alias

alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --" # Copy with progress bar && rsync <3
alias ls='ls --classify --tabsize=0 --literal --color=auto --human-readable'
alias iftop='sudo iftop -i wlp7s0 -B'
alias shutdown='sudo shutdown -h now'
alias cp='cp -v --interactive'
alias mv='mv -v --interactive'
alias rm='rm -v --interactive'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias c='clear'
alias less='less --quiet'
alias s='cd ..'
alias h='cd ~'
alias df='df --human-readable'
alias du='du -s --human-readable'
alias free='free -h'
alias x='startx'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
alias dmesg='dmesg -H'
alias cower='cower -t ~/scripts --color=always'


