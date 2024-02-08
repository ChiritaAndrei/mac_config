if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git 
	zsh-syntax-highlighting 
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi
alias t="tmux"
alias pago="cd ~/Work/Pago/Backend/pago/"
alias conf="cd ~/.config/"
alias tf='sesh connect $(sesh list | fzf)'
alias gb='git checkout $(git branch -l | fzf)'


export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/Users/andreichirita/Library/Android/sdk/platform-tools"
export PATH="$PATH:/Users/andreichirita/Library/Android/sdk/emulator"
export PATH="$PATH:/Users/andreichirita/Library/Python/3.8/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"
export TEMP="/Users/andreichirita/TEMP"

export FZF_TMUX_OPTS="-p"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

export SPRING_PROFILES_ACTIVE="localhost"
export pago_stage_username="stageandreic"
export pago_stage_password="(Dy+jN!a9LITtsvB"

export pago_prod_username="prodandreic"
export pago_prod_password="z%*PWzZ3+EtV@kZ2"

export pago_migrationdev_username="pago_migration_user"
export pago_migrationdev_password="5^79]i'cRfspH\E*KB"

export pago_prelive_username="pago_app_migration_user"
export pago_prelive_password="5^79]i'cRfspH\E*KB"

export SA_CATALOG_DB_USER="developer"
export SA_CATALOG_DB_PASSWORD="developer_password"

export FRIDA_CORE_DEVKIT="/Users/andreichirita/Work/frida-core-devkit"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
