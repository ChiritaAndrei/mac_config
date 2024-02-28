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
alias ta="tmux attach"
alias pago="cd ~/Work/Pago/Backend/pago/"
alias conf="cd ~/.config/"
alias tf='sesh connect $(sesh list | fzf)'
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

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
