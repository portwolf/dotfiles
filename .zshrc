#options for zsh
#export PATH=$PATH:/home/portwolf/.lib/pyroscope/bin/:/usr/bin/core_perl/
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
#eval `dircolors -z` # This generates an error. Please see the discussion above.

autoload -U compinit 
compinit
setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt cdablevars
setopt ignoreeof
setopt interactivecomments
setopt nobanghist
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
setopt nohup

# PS1 and PS2
#export PS1="$(print '%{\e[1;24m%}%n%{\e[0m%}'):$(print '%{\e[7m;14m%}%~%{\e[0m%}')$ "
export PS1="$(print '%{\e[1;24m%}%n%{\e[0m%}'):$(print '%{\e[96m%}%~%{\e[0m%}')$ "
#export PS2="$(print '%{\e[0;24m%}>%{\e[1;32m%}')"
export PS2="$(print '%{\e[0;24m%}>%{\e[1;32m%}')"

# Vars used later on by zsh
export EDITOR="vim"
export BROWSER=chromium
export PLAYER=mplayer
#export RXVT="aterm +sb -geometry 80x29 -fg black -bg lightgoldenrodyellow -fn -xos4-terminus-medium-*-normal-*-14-*-*-*-*-*-iso8859-15"

##################################################################
# Stuff to make my life easier

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir. 
zstyle ':completion:*:cd:*' ignore-parents parent pwd

##################################################################
# Key bindings
# http://mundy.yazzy.org/unix/zsh.php
# http://www.zsh.org/mla/users/2000/msg00727.html

typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[1~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[4~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char 

##################################################################
# My aliases

# Set up auto extension stuff
alias -s html=$BROWSER
alias -s org=$BROWSER
alias -s php=$BROWSER
alias -s com=$BROWSER
alias -s net=$BROWSER
alias -s png=feh
alias -s jpg=feh
alias -s gif=feh
alias -s mpeg=$PLAYER
alias -s avi=$PLAYER
alias -s flv=$PLAYER
alias -s sxw=soffice
alias -s doc=soffice
alias -s gz=tar -xzvf
alias -s bz2=tar -xjvf
alias -s java=$EDITOR
alias -s txt=$EDITOR
alias -s PKGBUILD=$EDITOR
#################################################################
################ADDED BY SIGGI##################################
alias vim='nvim'
# Normal aliases
alias ls='ls --color=auto -Flsth'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias du='du -lh'
alias f='find |grep'
alias c="clear"
alias dir='ls -1'
alias ..='cd ..'
alias tls='tmux list-sessions'
# Server wecken
alias wachauf='wol -i 192.168.0.55 D0:50:99:1C:36:42'
alias gitlog='git log --graph --oneline --decorate --all'
alias pdfgrep='pdfgrep --cache'
# type a directory's name to cd to it.
compctl -/ cd
export DISPLAY=:0.0
