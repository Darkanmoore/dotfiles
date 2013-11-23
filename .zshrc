zstyle :compinstall filename '/home/simone/.zshrc'
autoload -Uz compinit zcalc
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' file-sort modification reverse
autoload -U colors && colors
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=31=36"
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

echo ''
setopt VI
setopt NO_BEEP
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --" # Copy with progress bar && rsync <3
export EDITOR=vim

PROMPT="%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[cyan]%}%1~ %{$reset_color%}%# "
setopt correctall
alias ls='ls --classify --tabsize=0 --literal --color=auto --human-readable'
zstyle '*:processes-names' command 'ps -e -o comm='
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
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=200
alias x='startx'
alias grep='grep --color=auto'
alias pacman='sudo pacman'
RPROMPT="[%{$fg[green]%}%*%{$reset_color%}][%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"