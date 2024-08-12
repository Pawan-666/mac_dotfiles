if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
# zinit snippet OMZP::archlinux
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
# bindkey -s '^t' '^nnnn\n'

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias ls='ls --color'
alias vim='lvim'
alias c='clear'

alias net=' #my ip
            echo -e "ip addrress"
            ifconfig | grep -w inet | sed -n '2p' | awk "{print $2}";

            # Ping Google
            echo "Pinging Google..."
            ping -c 2 google.com;

            # DNS lookup for Google
            echo -e "\nDNS Lookup for Google:"
            dig +short google.com;

            # Retrieve headers from Google homepage
            echo -e "\nHeaders from Google homepage:"
            curl -I http://www.google.com 2>/dev/null | head -n 1;

            # Check if Google is reachable using wget
            echo -e "\nChecking Google reachability with wget..."
            wget -q --spider www.google.com;
            if [ $? -eq 0 ]; then
                echo "OK"
            else
                echo "NOT OKAY"
            fi

            # Perform DNS lookup using nslookup
            echo -e "\nDNS Lookup for Google using nslookup:"
            nslookup google.com
            '


alias rm=trash
alias rtv="rtv -s linux --no-flash --ascii"
# alias python3="/usr/bin/python3"
# alias python="/usr/bin/python3"
alias go="/usr/local/go/bin/go"
alias vi="lvim"
# alias ls="exa"
alias shutdown="sudo shutdown -r now"
alias pawan="ssh pawan@192.168.1.68"
alias wifi="ifconfig | grep -w inet | sed -n '2p'" 
export EDITOR="lvim"
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.local/bin:/Users/pawanchhetri/test/mpv/build/mpv.app/Contents/MacOS:~/.cargo/env
# Shell integrations
# eval "$(fzf --zsh)"
# # eval "$(zoxide init --cmd cd zsh)"

# bindkey -s '^t' '^ulf\n'


export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"


source $ZSH/oh-my-zsh.sh

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# venv() {
#     python3 -m venv venv && . venv/bin/activate && python3 -m pip install --upgrade pip &> /dev/null
# }

penv() {
pyenv virtualenv 3.12.0 $(basename $(pwd)) && pyenv local $(basename $(pwd))
}

mkdircd ()
{
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}

eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# hide EOL sign ('%')
export PROMPT_EOL_MARK=""

# enable completion features
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # case insensitive tab completion
eval "$(fzf --zsh)"
bindkey -s '^t' '^uyy\n'
eval "$(starship init zsh)"
