alias clear='clear -x'


# ~/.zshrc
# enable control-s and control-q
stty start undef
stty stop undef
setopt noflowcontrol

#alias cls='clear -x && neofetch --block_range 0 15 --ascii_colors 4 5 --colors 4 7 5 4 5 7'
alias cls='clear -x && neofetch --block_range 0 15 --colors 4 7 5 4 5 7'

export ZSH="$HOME/.zsh"

ZSH_THEME="eighties"

plugins=(git)

source $ZSH/zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(gdircolors)"
alias ls='ls --color'
alias vi='nvim'

PATH=~/bin:$PATH
PATH=~/.local/bin:$PATH
PATH=~/.cargo/bin:$PATH
PATH=~/.local/share/pnpm:$PATH
PATH=/usr/local/go/bin:$PATH
PATH=~/go/bin:$PATH
PATH=~/flutter/bin:$PATH
PATH=~/.pub_cache/bin:$PATH
PATH=~/.asdf/shims:$PATH

# Turso
export PATH="/home/ks/.turso:$PATH"

PATH=$PATH:~/.cache/rebar3/bin

# opam configuration
[[ ! -r /home/ks/.opam/opam-init/init.zsh ]] || source /home/ks/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null



clear

# pnpm
export PNPM_HOME="/home/ks/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=/usr/local/opt/openjdk/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="$HOME/.sdkman"
#[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
