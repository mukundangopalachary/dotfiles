# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# OWN 
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for 777 folders

  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias diff='diff --color=auto'
  alias ip='ip --color=auto'

  export LESS_TERMCAP_mb=$'\E[1;31m'
  export LESS_TERMCAP_md=$'\E[1;36m'
  export LESS_TERMCAP_me=$'\E[0m'
  export LESS_TERMCAP_so=$'\E[01;33m'
  export LESS_TERMCAP_se=$'\E[0m'
  export LESS_TERMCAP_us=$'\E[1;32m'
  export LESS_TERMCAP_ue=$'\E[0m'
fi

# Bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# opencode
export PATH=/home/mukundan/.opencode/bin:$PATH


export TERM=xterm-256color

# personal commands and PATH
export PATH=/home/mukundan/Documents/learning/bash/mycommands:$PATH
source /home/mukundan/Documents/learning/bash/mycommands/mkcd
source /home/mukundan/Documents/learning/bash/mycommands/up
source /home/mukundan/Documents/learning/bash/mycommands/repo

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# SDKMAN!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# FZF
eval "$(fzf --bash)"
alias ff='nvim $(fzf -m --preview="batcat --color=always {}")'

# Starship
eval "$(starship init bash)"

# ---------- zoxide ---------
eval "$(zoxide init bash)"
alias cd="z"
