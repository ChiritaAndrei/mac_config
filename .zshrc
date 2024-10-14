if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export ZSH_TMUX_AUTOSTART="true"
export ZSH_TMUX_DEFAULT_SESSIONPNAME="HOME"
export ZSH_TMUX_AUTONAME_SESSION="true"
export ZSH_TMUX_DETACHED="true"
export ZSH_TMUX_AUTOCONNECT="true"

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet/Users/andreichirita/.local/share/zinit/snippets/OMZP::tmux/tmux.extra.conf: No such file or directory
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
zinit snippet OMZP::tmux
# Add in snippets

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

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
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'


if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi
# alias t="tmux"
# alias ta="tmux attach"
# alias tls="tmux list-sessions | fzf --reverse | pbcopy"
# alias tf='sesh connect $(sesh list | fzf)'
alias vim='nvim'

alias gb='git checkout $(git branch -l | fzf)'
alias gt-lsr='git ls-remote --tags --refs origin | awk -F / '\''{print $NF}'\'' | sort -r | fzf --reverse | pbcopy'
alias gt-ls='git tag --sort=v:refname | sort -r | fzf --reverse | pbcopy'
alias gt-c='git tag'
alias gt-p='git push origin'

export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:/Users/andreichirita/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/andreichirita/Library/Android/sdk/emulator"
export PATH="$PATH:/Users/andreichirita/Library/Python/3.8/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"
export TEMP="/Users/andreichirita/TEMP"


export FZF_TMUX_OPTS="-p"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

export SPRING_PROFILES_ACTIVE="localhost"
source ~/.secrets

export FRIDA_CORE_DEVKIT="/Users/andreichirita/Work/frida-core-devkit"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Shell integrations
source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
