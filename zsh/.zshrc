alias clear='clear -x'

#alias cls='clear -x && neofetch --block_range 0 15 --ascii_colors 4 5 --colors 4 7 5 4 5 7'
alias cls='clear -x && neofetch --block_range 0 15 --colors 4 7 5 4 5 7'

export ZSH="$HOME/.zsh"

ZSH_THEME="eighties"

plugins=(git)

source $ZSH/zsh.sh

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(dircolors)"
alias ls='ls --color'
alias vi='nvim'

PATH=~/bin:$PATH
PATH=~/.local/bin:$PATH
PATH=~/.cargo/bin:$PATH
PATH=~/.local/share/pnpm:$PATH
PATH=/usr/local/go/bin:$PATH
PATH=~/go/bin:$PATH

# Turso
export PATH="/home/ks/.turso:$PATH"

# opam configuration
[[ ! -r /home/ks/.opam/opam-init/init.zsh ]] || source /home/ks/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null



clear
