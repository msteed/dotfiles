HISTFILE=~/.zsh_history
HISTSIZE=SAVEHIST=10000

unsetopt allexport
setopt sharehistory
setopt histverify
setopt extendedglob
#setopt globcomplete
setopt promptsubst
setopt completeinword
setopt interactivecomments
unsetopt beep

export EDITOR="vim"
export PATH="${HOME}/bin:/usr/local/bin:/usr/bin"
export PAGER="less"
export LESS="-I -R -S --shift=8"
export SHELL="/usr/bin/zsh"
export PYTHONPATH="${HOME}/salt:${HOME}/salt-pylint:${HOME}/salt-testing"

unset GNOME_KEYRING_CONTROL GNOME_KEYRING_PID

function vim() {
    # Disable flow control in the terminal so that ^S and ^Q are available for mappings
    stty -F /dev/stdout -ixon
    /usr/bin/vim "$@"
    stty -F /dev/stdout ixon
}

function ls() {
    /usr/bin/ls --color=always "$@"
}

function ll() {
    /usr/bin/ls --color=always -l "$@"
}

function grep() {
    /usr/bin/grep --color=always "$@"
}

function man() {
  env \
    LESS_TERMCAP_mb=$'\e[0;34m' \
    LESS_TERMCAP_md=$'\e[1;34m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[0;33m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[0;35m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    man "$@"
}

function dmesg() {
  /usr/bin/dmesg --color=always $@
}

function dropbox() {
    dropbox-cli "$@"
}

function pylint() {
    /usr/local/bin/pylint --rcfile=$HOME/salt/.testing.pylintrc -r no $@
}

function _colors() {
    eval $(dircolors)
}

function _ps() {
    local txtblk=$'%{\e[0;30m%}' # Black - Regular
    local txtred=$'%{\e[0;31m%}' # Red
    local txtgrn=$'%{\e[0;32m%}' # Green
    local txtylw=$'%{\e[0;33m%}' # Yellow
    local txtblu=$'%{\e[0;34m%}' # Blue
    local txtpur=$'%{\e[0;35m%}' # Purple
    local txtcyn=$'%{\e[0;36m%}' # Cyan
    local txtwht=$'%{\e[0;37m%}' # White
    local bldblk=$'%{\e[1;30m%}' # Black - Bold
    local bldred=$'%{\e[1;31m%}' # Red
    local bldgrn=$'%{\e[1;32m%}' # Green
    local bldylw=$'%{\e[1;33m%}' # Yellow
    local bldblu=$'%{\e[1;34m%}' # Blue
    local bldpur=$'%{\e[1;35m%}' # Purple
    local bldcyn=$'%{\e[1;36m%}' # Cyan
    local bldwht=$'%{\e[1;37m%}' # White
    local noattrs=$'%{\e[m%}'

    local txtusr=${txtcyn}
    local txtpwd=${txtgrn}
    local txtsep=${txtwht}
    if [ "$(id -nu)" = "root" ]; then
	local txtprompt="${txtred}"
    else
	local txtprompt="${txtsep}"
    fi

    export PS1="${txtusr}%n@%m${txtsep}:${txtpwd}%3~${txtprompt}%# ${noattrs}"
    export PS2="%_> "
}

_colors
_ps

bindkey -v

zmodload zsh/complist
autoload -U compinit && compinit
autoload -U promptinit && promptinit

vi-search-fix() {
    zle vi-cmd-mode
    zle .vi-history-search-backward
}

autoload vi-search-fix
zle -N vi-search-fix
bindkey -M viins '\e/' vi-search-fix

zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}'
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=green
ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan
ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan
ZSH_HIGHLIGHT_STYLES[command]=fg=yellow
ZSH_HIGHLIGHT_STYLES[precommand]=none
ZSH_HIGHLIGHT_STYLES[commandseparator]=none
ZSH_HIGHLIGHT_STYLES[hashed-command]=none
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_approx]=none
ZSH_HIGHLIGHT_STYLES[globbing]=none
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=red
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=cyan
ZSH_HIGHLIGHT_STYLES[assign]=none
