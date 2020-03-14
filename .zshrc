# History file settings (size etc.)
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

# load zshcompletion module
autoload -Uz compinit promptinit up-line-or-beginning-search down-line-or-beginning-search
compinit
promptinit

# history search on up/down commands (from archlinux zsh wiki)
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# enable vim mode in command line
bindkey -v

# enable reverse command search
bindkey '^R' history-incremental-search-backward

# type directory name to enter directory
setopt autocd

# this will set the default prompt theme to the walters theme
prompt redhat

# command completion
zstyle ':completion:*' menu select

# command line switches completion
setopt COMPLETE_ALIASES

# autocompletion on priviledged environments (sudo etc.)
zstyle ':completion::complete:*' gain-priviliges 1

# Vars used later on by zsh
export EDITOR="nvim"
export BROWSER="qutebrowser"
export PLAYER="mpv"


# aliases by serjog
alias bb='sudo bauerbill'
alias tns='tmux new -s'
# enable colored output on shell commands
alias ls='ls --color=auto -stahl -F'
alias grep='grep --color=auto'
alias dmesg='dmesg --color=always'
# colors in man, less, most (more)
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
